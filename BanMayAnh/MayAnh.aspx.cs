using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanMayAnh
{
    public partial class DanhMucSanPham: System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (blogin != null && alogin != null)
            {
                if (Session["LoggedInUser"] != null)
                {
                    blogin.Visible = false;
                    alogin.Visible = true;
                }
                else
                {
                    blogin.Visible = true;
                    alogin.Visible = false;
                }
            }
            if (!IsPostBack)
            {
                string loai = Request.QueryString["loai"];
                List<MayAnh> ds = (List<MayAnh>)Application["DSSP"];
                if (!string.IsNullOrEmpty(loai))
                {
                    // Lọc sản phẩm theo loại (không phân biệt hoa thường)
                    var dsLoc = ds.Where(sp => !string.IsNullOrEmpty(sp.Loai) && sp.Loai.Equals(loai, StringComparison.OrdinalIgnoreCase)).ToList();
                    rptProducts.DataSource = dsLoc;
                }
                else
                {
                    // Hiển thị tất cả nếu không chọn loại
                    rptProducts.DataSource = ds;
                }
                rptProducts.DataBind();
            }
        }

 
        public void Login_Click(object sender, EventArgs e)
        {
            Response.Redirect("dangnhap.aspx?ReturnUrl=MayAnh.aspx");
        }

        public void Register_Click(object sender, EventArgs e)
        {
            Response.Redirect("dangky.aspx");
        }

        protected void rptProducts_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Dathang")
            {
                int id = Convert.ToInt32(e.CommandArgument);

                // Kiểm tra đăng nhập
                if (Session["LoggedInUser"] == null)
                {
                    string url = "dangnhap.aspx?ReturnUrl=" + Server.UrlEncode(Request.Url.AbsoluteUri);
                    ClientScript.RegisterStartupScript(this.GetType(), "alertRedirect",
                        $"alert('Bạn cần đăng nhập để đặt hàng!'); window.location='{url}';", true);
                    return;
                }

                // Lưu giỏ hàng trong Session
                List<int> gioHang = Session["Cart"] as List<int> ?? new List<int>();
                gioHang.Add(id);
                Session["Cart"] = gioHang;

                // Chuyển sang trang thanh toán
                string id1 = e.CommandArgument.ToString();
                Response.Redirect("ThanhToan.aspx?id=" + id1);
            }
        }

        public void Logout_Click (object sender, EventArgs e)
        {
            Session["LoggedInUser"] = null;
            blogin.Visible = true;
            alogin.Visible = false;
        }
    }
}