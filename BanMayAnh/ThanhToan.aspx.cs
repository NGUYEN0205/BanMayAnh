using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanMayAnh
{
    public partial class ThanhToan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LoggedInUser"] == null)
            {
                Response.Redirect("dangnhap.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    // Lấy ID sản phẩm từ query string
                    string idStr = Request.QueryString["id"];
                    if (!string.IsNullOrEmpty(idStr))
                    {
                        int id = int.Parse(idStr);
                        // Lấy danh sách sản phẩm từ Application
                        List<MayAnh> ds = Application["DSSP"] as List<MayAnh>;
                        MayAnh sp = ds.FirstOrDefault(x => x.Id == id);

                        if (sp != null)
                        {
                            // Hiển thị thông tin sản phẩm trong trang
                            imgSP.Src = sp.Anh;
                            tenSP.InnerText = sp.Tensp;
                            giaSP.InnerText = sp.Gia;
                            soLuong.InnerText = "Số lượng: 1";

                            decimal gia = ChuyenChuoiThanhSo(sp.Gia);
                            decimal phiVanChuyen = 100000; // 100k
                            decimal tong = gia + phiVanChuyen;

                            tongSP.InnerText = gia.ToString("N0") + "đ";
                            tongTien.InnerText = tong.ToString("N0") + "đ";
                        }
                    }
                }
            }
        }

        private decimal ChuyenChuoiThanhSo(string giaChuoi)
        {
            // Lấy giá đầu tiên nếu có khoảng giá
            var parts = giaChuoi.Split('–');
            string giaStr = parts[0].Trim()
                .Replace("₫", "")
                .Replace("đ", "")
                .Replace(",", "")
                .Replace(".", "");

            decimal gia;
            decimal.TryParse(giaStr, out gia);
            return gia;
        }

        public void BtnThanhToan_Click(object sender, EventArgs e)
        {

            bool hasError = false;

            // Kiểm tra Họ và tên
            string hoten = HoTen.Value;
            if (string.IsNullOrEmpty(hoten))
            {
                HoTenLoi.InnerHtml = "*Họ tên không được để trống!";
                hasError = true;
            }
            else if (!IsValidHoTen(hoten)) 
            {
                HoTenLoi.InnerHtml = "*Họ tên không hợp lệ!";
                hasError = true;
            }
            else
            {
                HoTenLoi.InnerHtml = "";
            }

            string sdt = SDT.Value;
            if (string.IsNullOrEmpty(sdt))
            {
                SDTLoi.InnerHtml = "*SDT không được để trống!";
                hasError = true;
            }
            else if (!IsValidSDT(sdt))
            {
                SDTLoi.InnerHtml = "*SDT không đúng định dạng. (chỉ gồm tối đa 10 chữ số và bắt đầu là 03, 05, 07, 08, 09. Vd: 0987654321)!";
                hasError = true;
            }
            else
            {
                SDTLoi.InnerHtml = "";
            }

            string dc = DiaChi.Value;
            if (string.IsNullOrEmpty(dc))
            {
                DiaChiLoi.InnerHtml = "*Địa chỉ không được để trống!";
                hasError = true;
            }
            else if (!IsValidDiaChi(dc))
            {
                DiaChiLoi.InnerHtml = "Địa chỉ không hợp lệ!";
                hasError = true;
            }
            else
            {
                HoTenLoi.InnerHtml = "";
            }

            if (!hasError)
            {
                var donhang = new
                {
                    MaDon = "DH" + DateTime.Now.Ticks,
                    NgayDat = DateTime.Now.ToString("dd/mm/yyyy HH:mm"),
                    TrangThai = "Đang xử lý",
                    HoTen = HoTen.Value,
                    SDT = SDT.Value,
                    DiaChi = DiaChi.Value,
                    PhuongThucTT = Request.Form["PhuongThucThanhToan"],
                    TenSP = tenSP.InnerText,
                    GiaSP = giaSP.InnerText,
                    SoLuong = soLuong.InnerText,
                    TongTien = tongTien.InnerText,
                    Anh = imgSP.Src
                };
                string key = (string)Session["LoggedInUser"];
                /*Response.Cookies["dsdh_" + key].Value = donhang.ToString();
                Response.Cookies["dsdh_"+key].Expires = DateTime.Now.AddDays(15);*/

                List<object> dsdh = Session["dsdh_" + key] as List<object> ?? new List<object>();
                dsdh.Add(donhang);
                Session["dsdh_" + key] = dsdh;
                Response.Redirect("TheoDoiDonHang.aspx");
            }
        }

        private bool IsValidHoTen(string hoten)
        {
            string kieu = @"^[A-Za-zÀ-ỹ]+(\s[A-Za-zÀ-ỹ]+)*$";
            return Regex.IsMatch(hoten, kieu);
        }

        private bool IsValidSDT(string sdt)
        {
            string kieu = @"^(0[3|5|7|8|9])[0-9]{8}$";
            return Regex.IsMatch(sdt, kieu);
        }

        private bool IsValidDiaChi(string dc)
        {
            string kieu = @"^[A-Za-zÀ-ỹ\/0-9]+(\s[A-Za-zÀ-ỹ\/0-9]+)*$";
            return Regex.IsMatch(dc, kieu);
        }
    }
}