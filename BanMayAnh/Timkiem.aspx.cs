using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanMayAnh
{
    public partial class Timkiem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<MayAnh> kq = new List<MayAnh>();
            List<MayAnh> ds = new List<MayAnh>();
            ds = (List<MayAnh>)Application["DSSP"];
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
            if (IsPostBack)
            {
                int gia1, gia2;
                bool kt1 = int.TryParse(Request.Form["bgia"], out gia1);
                bool kt2 = int.TryParse(Request.Form["fgia"], out gia2);
                string tkten = Request.Form["tk"];
                if (!kt1)
                {
                    gia1 = 0;
                }
                if (!kt2)
                {
                    gia2 = int.MaxValue;
                }
                timkiem(kq, ds, gia1, gia2, tkten);
                if (kq != null && kq.Count > 0)
                {
                    Hienthidssp(kq);
                }
                else
                {
                    Hienthidssp(ds);
                }
            }
            else
            {
                Hienthidssp(ds);
            }
        }
        private void timkiem(List<MayAnh> kq, List<MayAnh> ds, int gia1, int gia2, string tkten)
        {
            kq.Clear();
            foreach (MayAnh anh in ds)
            {
                string chuoigoc = anh.Gia;
                int vt = chuoigoc.IndexOf("₫");
                if (vt != -1)
                {
                    string gia = chuoigoc.Substring(0, vt);
                    gia = gia.Replace(",", "").Replace("₫", "").Trim();

                    int giakq;
                    bool kt = int.TryParse(gia, out giakq);
                    if (kt && giakq >= gia1 && giakq <= gia2 && anh.Tensp.ToLower().Contains(tkten.ToLower()))
                    {
                        kq.Add(anh);
                    }
                }

            }
        }
        private void Hienthidssp(List<MayAnh> ds)
        {

            dssp.InnerHtml = "";
            foreach (MayAnh anh in ds)
            {
                dssp.InnerHtml += $@"<div class='sp'><img src='{anh.Anh}'/><h4>{anh.Tensp}</h4><p class=""gia"">{anh.Gia:N0}VND</p></div>";
            }
        }
    }

}