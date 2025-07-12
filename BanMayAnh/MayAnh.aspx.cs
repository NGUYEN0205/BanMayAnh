using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanMayAnh
{
    public partial class DanhMucSanPham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void Dathang_Click(object sender, EventArgs e)
        {
            if (Session["LoggedInUser"] == null)
            {
                Response.Write("<script>alert('Vui lòng đăng nhập để đặt hàng!')</script>");
                Response.Redirect("dangnhap.aspx");
                return;
            }
            Response.Redirect("ThanhToan.aspx");
        }
    }
}