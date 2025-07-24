using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;

namespace BanMayAnh
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id;
            if (!int.TryParse(Request.QueryString["id"], out id))
            {
                Response.Write("<h3>Id sản phẩm không hợp lệ.</h3>");
                return;
            }
            List<MayAnh> ds = Application["DSSP"] as List<MayAnh>;
            if (ds == null || ds.Count == 0)
            {
               
                ds = new List<MayAnh>();
            }

            MayAnh sp = ds.FirstOrDefault(sp1 => sp1.Id == id);

            if (sp != null)
            {
                var singleItem = new List<MayAnh> { sp };

                rptProducts.DataSource = singleItem;
                rptProducts.DataBind();

                rptDetail.DataSource = singleItem;
                rptDetail.DataBind();
            }
            else
            {
                Response.Write("<h3>Không tìm thấy sản phẩm phù hợp.</h3>");
            }

        }
    }
}