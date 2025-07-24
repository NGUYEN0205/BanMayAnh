<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dangky.aspx.cs" Inherits="BanMayAnh.dangky" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng ký tài khoản</title>
    <link rel="icon" type="image/x-icon" href="favicon.ico" />
    <style>
        body {
            background-image: url('camera.jpg');
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            font-family: Arial, sans-serif;
        }
        #content {
            background: #ccc;
            padding: 20px;
            width: 500px;
            border-radius: 10px;
            margin: 0 auto;
        }
        .input-group {
            margin-bottom: 20px;
            text-align: left;
        }
        .error {
            color: #ff4d4d;
            font-size: 12px;
            margin-top: 5px;
            display: block;
        }
        h1 {
            font-size: 24px;
            margin-bottom: 20px;
            text-align: center;
        }
        input, select {
            width: 100%;
            padding: 10px;
            border: 2px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        button {
            width: 48%;
            padding: 10px;
            border-radius: 5px;
            background: #7289da;
            border: none;
            cursor: pointer;
        }
        button:hover {
            background: #677bc4;
        }
        .login-link {
            color: #00aff4;
            text-align: center;
            margin-top: 15px;
            display: block;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div id="content">
        <h1>ĐĂNG KÝ TÀI KHOẢN</h1>
        <form id="dangky" runat="server">
            <div class="input-group">
                <label>Tên đầy đủ</label>
                <input type="text" id="fullname" name="fullname" placeholder="Nhập tên đầy đủ" runat="server" />
                <div class="error" id="fullnameError" runat="server"></div>
            </div>
            <div class="input-group">
                <label>Tên đăng nhập</label>
                <input type="text" id="username" name="username" placeholder="Nhập tên đăng nhập" runat="server" />
                <div class="error" id="usernameError" runat="server"></div>
            </div>
            <div class="input-group">
                <label>Mật khẩu</label>
                <input type="password" id="password" name="password" placeholder="Nhập mật khẩu" runat="server" />
                <div class="error" id="passwordError" runat="server"></div>
            </div>
            <div class="input-group">
                <label>Nhập lại mật khẩu</label>
                <input type="password" id="repassword" name="repassword" placeholder="Nhập lại mật khẩu" runat="server" />
                <div class="error" id="repasswordError" runat="server"></div>
            </div>
            <div class="input-group">
                <label>Email</label>
                <input type="text" id="email" name="email" placeholder="Nhập email" runat="server" />
                <div class="error" id="emailError" runat="server"></div>
            </div>
            <div style="display: flex; gap: 20px; margin-bottom: 20px;">
                <div style="flex: 1;" class="input-group">
                    <label>Số điện thoại</label>
                    <input type="text" id="phone" name="phone" placeholder="Nhập số điện thoại" runat="server" />
                    <div class="error" id="phoneError" runat="server"></div>
                </div>
                <div style="flex: 1;" class="input-group">
                    <label>Ngày sinh</label>
                    <input type="date" id="dob" name="dob" runat="server" />
                    <div class="error" id="dobError" runat="server"></div>
                </div>
            </div>
            <div style="display: flex; justify-content: space-between">
                <button type="submit" id="nhapLai" name="action" value="reset">NHẬP LẠI</button>
                <button type="submit" id="dangKy" name="action" value="submit">ĐĂNG KÝ</button>
            </div>
            <a href="dangnhap.aspx" class="login-link">Đã có tài khoản? Đăng nhập</a>
        </form>
    </div>
</body>
</html>
