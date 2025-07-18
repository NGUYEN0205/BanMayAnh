<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Timkiem.aspx.cs" Inherits="BanMayAnh.Timkiem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="csshome.css">
<link rel="stylesheet" href="Menu.css">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="header">
            <div id="logobg"><img id="logo" src="logo.png"></div>
            <div id="menu">
                <ul id="menu-items">
                    <li><a href="TrangChu.aspx">Trang chủ</a></li>
                    <li class="dropdown">
                        <a href="MayAnh.aspx">Máy ảnh</a>
                        <ul class="dropdown-content">
                            <li><a href="MayAnh.aspx?loai=canon">Canon</a></li>
                            <li><a href="MayAnh.aspx?loai=nikon">Nikon</a></li>
                            <li><a href="MayAnh.aspx?loai=sony">Sony</a></li>
                        </ul>
                    </li>
                    <li id = "ongkinh" runat="server"><a href="MayAnh.aspx?loai=ongkinh">Ống kính</a></li>
                    <li class="active"><a href="Timkiem.aspx">Tìm kiếm</a></li>
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
                <input id="register" type="button" onclick=" window.location.href = 'dangnky.aspx'" value="Đăng ký">
            </div>
            <div id="alogin" runat="server">
                Xin chào
                <a href="">Đăng xuất</a>
            </div>
        </div>
        <div id="loc">
            <input type="text" id="timkiem" name="tk" placeholder="Tìm kiếm">
            <div>
                <p>Chọn khoảng giá</p>
                <input class="khoanggia" type="number" placeholder="Từ" name="bgia" ">
                <span style="margin: 0 10px;">–</span>
                <input class="khoanggia" type="number" placeholder="Đến" name="fgia" ">
                 <span style="margin: 0 10px;">–</span>
                <input type="submit" value="Tìm kiếm" id="btntk" />
                <p>Kết quả tìm kiếm</p>
                <div id="dssp" runat="server"></div>
            </div>
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
    </form>
</body>
</html>
