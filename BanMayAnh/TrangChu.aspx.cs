using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanMayAnh
{
    public partial class TrangChu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<MayAnh> dssp = new List<MayAnh>();
            dssp = (List<MayAnh>)Application["DSSP"];
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
            Hienthidssp(dssp);

        }
        private void Hienthidssp(List<MayAnh> ds)
        {
            foreach (MayAnh anh in ds)
            {
                dssp.InnerHtml += $@"<div class='sp'><img src='{anh.Anh}'/><h4>{anh.Tensp}</h4><p class=""gia"">{anh.Gia:N0}VND</p></div>";
            }
        }
    }
}