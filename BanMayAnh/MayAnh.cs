using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BanMayAnh
{
    public class MayAnh
    {
        int id;
        string tensp, gia, anh, link, loai;
        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        public string Tensp
        {
            get { return tensp; }
            set { tensp = value; }
        }
        public string Gia
        {
            get { return gia; }
            set { gia = value; }
        }
        public string Anh
        {
            get { return anh; }
            set { anh = value; }
        }
        public string Link
        {
            get { return link; }
            set { link = value; }
        }
        public string Loai
        {
            get { return loai; }
            set { loai = value; }
        }
    }
}