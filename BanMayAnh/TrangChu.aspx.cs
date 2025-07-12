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
    }
}