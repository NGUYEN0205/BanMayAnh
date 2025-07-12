<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dangnhap.aspx.cs" Inherits="BanMayAnh.dangnhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng nhập tài khoản</title>
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
        text-align: center;
    }
    h1 {
        font-size: 24px;
        margin-bottom: 20px;
        text-align: center;
    }
    input {
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
    .register-link {
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
        <h1>ĐĂNG NHẬP TÀI KHOẢN</h1>
        <form id="dangnhap" runat="server">
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
            <div class="error" id="loginError" runat="server"></div>
            <div style="display: flex; justify-content: space-between">
                <button type="submit" id="nhapLai" name="action" value="reset">NHẬP LẠI</button>
                <button type="submit" id="dangNhap" name="action" value="submit">ĐĂNG NHẬP</button>
            </div>
            <a href="dangky.aspx" class="register-link">Chưa có tài khoản? Đăng ký</a>
        </form>
    </div>
</body>
</html>