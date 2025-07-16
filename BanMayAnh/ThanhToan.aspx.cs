using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanMayAnh
{
    public partial class ThanhToan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
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
    }
}