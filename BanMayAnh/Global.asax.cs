using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace BanMayAnh
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            AreaRegistration.RegisterAllAreas();
            {
                {
                    Application["dstk"] = new List<taikhoan>();
                    taikhoan tk = new taikhoan();
                    tk.Tendangnhap = "admin";
                    tk.Mk = "admin";
                    List<taikhoan> ds = new List<taikhoan>();
                    ds.Add(tk);
                    Application["dstk"] = ds;
                }
            }
            GlobalConfiguration.Configure(WebApiConfig.Register);
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            List<MayAnh> sp = new List<MayAnh>
            {
                new MayAnh { Id = 1, Tensp = "Máy ảnh Canon EOS R100 + Kit 18 45", Gia = "13,000,000₫ – 13,900,000₫", Anh = "anh/May_anh_Canon_EOS_R100_Kit_18_45.jpeg", Link = "Detailproduct.aspx", Loai = "canon" },
                new MayAnh { Id = 2, Tensp = "Máy ảnh Sony Alpha NEX-3N", Gia = "6,000,000đ", Anh = "anh/May_anh_Sony_Alpha_NEX_3N.jpeg", Link = "Detailproduct.aspx", Loai = "sony"},
                new MayAnh { Id = 3, Tensp = "MÁY ẢNH MIRRORLESS NIKON Z50 BODY", Gia = "15,000,000₫ – 17,000,000₫", Anh = "anh/May_anh_MIRRORLESS_NIKON_Z50_body.jpeg", Link="Detailproduct.aspx", Loai = "nikon" },
                new MayAnh { Id = 4, Tensp = "Máy ảnh Nikon Coolpix P1100 (P1100 – Mới)", Gia = "27,000,000₫ – 28,000,000₫", Anh = "anh/May_anh_Nikon_Coolpix_P1100.jpeg", Link="Detailproduct.aspx", Loai = "nikon" },
                new MayAnh { Id = 5, Tensp = "MÁY ẢNH SIÊU ZOOM FUJIFILM FINEPIX S100FS CŨ", Gia = "2,000,000đ", Anh = "anh/May_anh_sieu_zoom_fujifilm_finepix_s100fs.png", Link="ChiTietSanPham.aspx" },
                new MayAnh { Id = 6, Tensp = "Panasonic Lumix FZ1000", Gia = "8,500,000₫", Anh = "anh/May_anh_Panasonic_Lumix_fz1000.jpg", Link="ChiTietSanPham.aspx" },
                new MayAnh { Id = 7, Tensp = "Máy ảnh Canon EOS 850D + 18 55 stm", Gia = "12,000,000₫ – 15,000,000₫", Anh = "anh/May_anh_Canon_EOS_850D.jpeg", Link="ChiTietSanPham.aspx", Loai = "canon" },
                new MayAnh { Id = 8, Tensp = "Canon EOS M50 + kit 15-45mm (đen -trắng)", Gia = "12,000,000₫ – 13,500,000₫", Anh = "anh/May_anh_Canon_M50.jpg", Link="ChiTietSanPham.aspx", Loai = "canon" },
                new MayAnh { Id = 9, Tensp = "FUJIFILM X-A7 Kit Fuji 15-45 use cũ", Gia = "15,000,000₫", Anh = "anh/May_anh_fujifilm_X_A7.jpg", Link="ChiTietSanPham.aspx" },
                new MayAnh { Id = 10, Tensp = "Sony Alpha A3000 & kit cũ đẹp", Gia = "5,000,000đ", Anh = "anh/May_anh_Sony_Alpha_A3000.jpg", Link="ChiTietSanPham.aspx", Loai = "sony" },
                new MayAnh { Id = 11, Tensp = "Máy ảnh Sony Alpha SLT-A65 kèm lens hàng cũ", Gia = "4,000,000₫", Anh = "anh/May_anh_Sony_alpha_SLT_A65.jpg", Link="ChiTietSanPham.aspx", Loai = "sony" },
                new MayAnh { Id = 12, Tensp = "Máy ảnh Mirrorless Canon EOS M5 (Kèm kit) cũ", Gia = "12,000,000₫", Anh = "anh/May_anh_MIRRORLESs_Canon_EOS-m5.png", Link="ChiTietSanPham.aspx", Loai = "canon" },
                new MayAnh { Id = 13, Tensp = "CANON M50 MARK II kèm lens 15-45 (m50 m2)", Gia = "15,000,000₫", Anh = "anh/May_anh_Canon_M50_Mark_II.png", Link="ChiTietSanPham.aspx" , Loai = "canon"},
                new MayAnh { Id = 14, Tensp = "Canon EOS 77D kèm 18 55 stm cũ", Gia = "9,000,000₫ – 11,500,000₫", Anh = "anh/May_anh_Canon_EOS_77D.jpg", Link="ChiTietSanPham.aspx", Loai = "canon" },
                new MayAnh { Id = 15, Tensp = "MÁY ẢNH DSLR CANON EOS 1DX MARK II Cũ", Gia = "18,000,000₫ – 26,000,000₫", Anh = "anh/May_anh_DSLR_Canon_EOS1DX.png", Link="ChiTietSanPham.aspx", Loai = "canon" },
                new MayAnh { Id = 16, Tensp = "Ống kính Tamron 35-150mm F/2-2.8 Di III VXD Nikon Z (35-150 Z – Mới)", Gia = "29,000,000₫ – 33,000,000₫", Anh = "anh/Ong_kinh_Tamron_35_150mm.jpeg", Link = "Detailproduct.aspx", Loai = "ongkinh"}
            };

            Application["DSSP"]=sp;
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}