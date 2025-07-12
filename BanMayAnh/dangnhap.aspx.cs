using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;

namespace BanMayAnh
{
    public partial class dangnhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Xử lý đăng xuất
            if (Request.QueryString["logout"] == "true")
            {
                Session.Remove("LoggedInUser");
                Session.Remove("RegisteredUsername");
                Response.Redirect("dangnhap.aspx");
                return;
            }

            if (!IsPostBack)
            {
                // Điền sẵn tên đăng nhập từ session nếu có
                if (Session["RegisteredUsername"] != null)
                {
                    username.Value = Session["RegisteredUsername"].ToString();
                }
            }
            else
            {
                string action = Request.Form["action"];
                if (action == "reset")
                {
                    Response.Redirect("dangnhap.aspx");
                    return;
                }
                else if (action == "submit")
                {
                    // Xóa thông báo lỗi trước đó
                    usernameError.InnerText = "";
                    passwordError.InnerText = "";
                    loginError.InnerText = "";

                    bool isValid = true;

                    string user = Request.Form["username"];
                    string password = Request.Form["password"];

                    if (string.IsNullOrEmpty(user))
                    {
                        usernameError.InnerText = "Vui lòng nhập tên đăng nhập";
                        isValid = false;
                    }

                    if (string.IsNullOrEmpty(password))
                    {
                        passwordError.InnerText = "Vui lòng nhập mật khẩu";
                        isValid = false;
                    }

                    if (isValid)
                    {
                        // Kiểm tra thông tin đăng nhập bằng foreach và if
                        List<taikhoan> ds = (List<taikhoan>)Application["dstk"];
                        bool isAuthenticated = false;
                        foreach (var tk in ds)
                        {
                            if (tk.Tendangnhap == user && tk.Mk == password)
                            {
                                isAuthenticated = true;
                                break;
                            }
                        }

                        if (isAuthenticated)
                        {
                            // Đăng nhập thành công
                            Session["LoggedInUser"] = user;
                            Session.Remove("RegisteredUsername");
                            Response.Redirect("TrangChu.aspx");
                        }
                        else
                        {
                            loginError.InnerText = "Tên đăng nhập hoặc mật khẩu không đúng";
                        }
                    }
                }
            }
        }
    }
}