<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="BanMayAnh.TrangChu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <html>
    <head>
        <link rel="stylesheet" href="csshome.css">
        <link rel="stylesheet" href="Menu.css">
    </head>
    <body>
        <div id="header">
            <div id="logobg"><img id="logo" src="logo.png"></div>
            <div id="menu">
                <ul id="menu-items">
                    <li class="active"><a href="TrangChu.aspx">Trang chủ</a></li>
                    <li class="dropdown">
                        <a href="MayAnh.aspx">Máy ảnh</a>
                        <ul class="dropdown-content">
                            <li><a href="MayAnh.aspx?loai=canon">Canon</a></li>
                            <li><a href="MayAnh.aspx?loai=nikon">Nikon</a></li>
                            <li><a href="MayAnh.aspx?loai=sony">Sony</a></li>
                        </ul>
                    </li>
                    <li id = "ongkinh" runat="server"><a href="MayAnh.aspx?loai=ongkinh">Ống kính</a></li>
                    <li><a href="Timkiem.aspx">Tìm kiếm</a></li>
                    <li class="dropdown">
                        <a href="GioHang.aspx">Giỏ hàng</a>
                        <ul class="dropdown-content">
                            <li><a href="TheoDoiDonHang.aspx">Đơn hàng</a></li>
                        </ul>
                    </li>
                    <li>Liên hệ</li>
                </ul>
            </div>
            <div id="blogin" runat="server">
                <input id="login" type="button" onclick=" window.location.href = 'dangnhap.aspx'" value="Đăng nhập">
                <input id="register" type="button" onclick=" window.location.href = 'dangky.aspx'" value="Đăng ký">
            </div>
            <div id="alogin" runat="server">
                <p>Xin chào</p>
                <a href="">Đăng xuất</a>
            </div>
        </div>
        <input type="text" id="timkiem" name="tk" placeholder="Tìm kiếm">
        <div><img id="banner" src="banner.jpg"></div>
        <h2>Sản phẩm nổi bật</h2>
        <div id="dssp" runat="server">
            
        </div>
        <div id="footer">
            <div id="lienhe">
                <p style="font-weight: bold;">Liên hệ</p>
                <p>📍 96 Định Công, Hà Nội</p>
                <p>📞 0987 654 321</p>
                <p>✉️ support@mayanh.com</p>
            </div>
            <div id="Tglv">
                <p style="font-weight: bold;">Thời gian làm việc</p>
                <p>Sáng: 07:00 - 11:00</p>
                <p>Tối: 13:00 - 20:00</p>
            </div>
            <div id="tt">
                <p style="font-weight: bold;">Thông tin chung</p>
                <p>Chính sách bảo hành</p>
                <p>Hướng dẫn mua hàng</p>
                <p>Điều khoản & dịch vụ</p>
            </div>
        </div>
    </body>
</html>
    </form>
</body>
</html>
