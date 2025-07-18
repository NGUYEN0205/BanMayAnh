using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanMayAnh
{
    public partial class TheoDoiDonHang : System.Web.UI.Page
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
                string key = (string)Session["LoggedInUser"];
                if (Session["dsdh_" + key] != null)
                {
                    var ds = (List<object>)Session["dsdh_" + key];
                    rptDonHang.DataSource = ds;
                    rptDonHang.DataBind();
                }/*
                if (Response.Cookies["dsdh_"+key] != null)
                {
                    var ds = Response.Cookies["dsdh_" + key];
                    rptDonHang.DataSource = ds;
                    rptDonHang.DataBind();
                }*/
            }
        }

        public void Logout_Click(object sender, EventArgs e)
        {
            Session["LoggedInUser"] = null;
            blogin.Visible = true;
            alogin.Visible = false;
        }
    }
}