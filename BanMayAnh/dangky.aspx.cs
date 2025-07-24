using System;
using System.Collections.Generic;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;

namespace BanMayAnh
{
    public partial class dangky : System.Web.UI.Page
    {
        protected System.Web.UI.HtmlControls.HtmlGenericControl fullnameError;
        protected System.Web.UI.HtmlControls.HtmlGenericControl usernameError;
        protected System.Web.UI.HtmlControls.HtmlGenericControl passwordError;
        protected System.Web.UI.HtmlControls.HtmlGenericControl repasswordError;
        protected System.Web.UI.HtmlControls.HtmlGenericControl emailError;
        protected System.Web.UI.HtmlControls.HtmlGenericControl phoneError;
        protected System.Web.UI.HtmlControls.HtmlGenericControl dobError;


        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (IsPostBack)
            {
                string action = Request.Form["action"];
                if (action == "reset")
                {
                    Response.Redirect("dangky.aspx");
                    return;
                }
                else if (action == "submit")
                {
                    // Xóa thông báo lỗi trước đó
                    fullnameError.InnerText = "";
                    usernameError.InnerText = "";
                    passwordError.InnerText = "";
                    repasswordError.InnerText = "";
                    emailError.InnerText = "";
                    phoneError.InnerText = "";
                    dobError.InnerText = "";

                    bool isValid = true;

                    string name = Request.Form["fullname"];
                    string user = Request.Form["username"];
                    string password = Request.Form["password"];
                    string repassword = Request.Form["repassword"];
                    string email = Request.Form["email"];
                    string sdt = Request.Form["phone"];
                    string ngaysinh = Request.Form["dob"];

                    // Kiểm tra tên đầy đủ
                    if (string.IsNullOrEmpty(name))
                    {
                        fullnameError.InnerText = "Vui lòng nhập tên đầy đủ";
                        isValid = false;
                    }
                    else if (!Regex.IsMatch(name, @"^[^0-9!@#$%^&*()_+\-=<>?:\|]+$"))
                    {
                        fullnameError.InnerText = "Họ và tên không hợp lệ";
                        isValid = false;
                    }

                    // Kiểm tra tên đăng nhập
                    if (string.IsNullOrEmpty(user))
                    {
                        usernameError.InnerText = "Vui lòng nhập tên đăng nhập";
                        isValid = false;
                    }
                    else
                    {
                        List<taikhoan> ds = (List<taikhoan>)Application["dstk"];
                        foreach (var tk in ds)
                        {
                            if (tk.Tendangnhap == user)
                            {
                                usernameError.InnerText = "Tên đăng nhập đã tồn tại";
                                isValid = false;
                                break;
                            }
                        }
                        if (!Regex.IsMatch(user, @"^[^!@#$%^&*()_+\-=<>?:\|]+$"))
                        {
                            usernameError.InnerText = "Tên đăng nhập không hợp lệ";
                            isValid = false;
                        }
                    }

                    // Kiểm tra mật khẩu
                    if (string.IsNullOrEmpty(password))
                    {
                        passwordError.InnerText = "Vui lòng nhập mật khẩu";
                        isValid = false;
                    }
                    else if (password.Length < 8 || password.Length > 20)
                    {
                        passwordError.InnerText = "Mật khẩu phải tối thiểu 8 ký tự và tối đa 20 ký tự";
                        isValid = false;
                    }
                    else if (Regex.IsMatch(password, @"[-<>{;]"))
                    {
                        passwordError.InnerText = "Mật khẩu không các ký tự cấm";
                        isValid = false;
                    }

                    // Kiểm tra mật khẩu nhập lại
                    if (password != repassword)
                    {
                        repasswordError.InnerText = "Mật khẩu không khớp";
                        isValid = false;
                    }

                    // Kiểm tra email
                    if (string.IsNullOrEmpty(email))
                    {
                        emailError.InnerText = "Vui lòng nhập email";
                        isValid = false;
                    }
                    else if (!Regex.IsMatch(email, @"^[^@]+@[a-zA-Z0-9]{3,5}\.[a-zA-Z0-9]{3,5}$"))
                    {
                        emailError.InnerText = "Email không hợp lệ";
                        isValid = false;
                    }

                    // Kiểm tra số điện thoại
                    if (string.IsNullOrEmpty(sdt))
                    {
                        phoneError.InnerText = "Vui lòng nhập số điện thoại";
                        isValid = false;
                    }
                    else if (!Regex.IsMatch(sdt, @"^0[0-9]{9}$"))
                    {
                        phoneError.InnerText = "Số điện thoại phải có 10 chữ số và bắt đầu bằng 0";
                        isValid = false;
                    }

                    // Kiểm tra ngày sinh
                    if (string.IsNullOrEmpty(ngaysinh))
                    {
                        dobError.InnerText = "Vui lòng chọn ngày sinh";
                        isValid = false;
                    }
                    else
                    {
                        DateTime birthDate;
                        if (DateTime.TryParse(ngaysinh, out birthDate))
                        {
                            if (birthDate >= DateTime.Today)
                            {
                                dobError.InnerText = "Ngày sinh không hợp lệ";
                                isValid = false;
                            }
                        }
                        else
                        {
                            dobError.InnerText = "Định dạng ngày sinh không hợp lệ";
                            isValid = false;
                        }
                    }

                    // Nếu tất cả kiểm tra hợp lệ, lưu tài khoản
                    if (isValid)
                    {
                        List<taikhoan> ds = (List<taikhoan>)Application["dstk"];
                        taikhoan tk = new taikhoan
                        {
                            Tendangnhap = user,
                            Mk = password
                        };
                        ds.Add(tk);
                        Application["dstk"] = ds;

                        Session["RegisteredUsername"] = user;
                        Response.Write("<script>alert('Đăng ký thành công! Vui lòng đăng nhập.'); window.location='dangnhap.aspx';</script>");
                    }
                }
            }
        }
    }
            
}