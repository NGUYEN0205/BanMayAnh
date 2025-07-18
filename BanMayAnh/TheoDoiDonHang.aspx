<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TheoDoiDonHang.aspx.cs" Inherits="BanMayAnh.TheoDoiDonHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="TheoDoiDonHang.css" />
    <link rel="stylesheet" href="Menu.css" />
</head>
<body style="min-height:1080px">
    <form id="form1" runat="server">
        <div id="header">
            <div id="logobg"><img id="logo" src="anh/logo.png"></div>
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
                <input id="login" type="button" onclick="window.location='dangnhap.aspx'" value="Đăng nhập">
                <input id="register" type="button" onclick="window.location='dangky.aspx'" value="Đăng ký">
            </div>
            <div id="alogin" runat="server">
                <input id="logout" type="submit" runat="server" onclick="return confirm('Bạn có chắc muốn thoát không?');" onserverclick="Logout_Click" value="Đăng xuất">
            </div>
        </div>

         <div class="container" style="min-height:500px">
            <h1>Theo dõi đơn hàng</h1>

             <asp:Repeater ID="rptDonHang" runat="server">
                <ItemTemplate>
                    <details>
                        <summary>
                            <h2 style="display: inline; color: #007bff;"><%# Eval("TenSP") %></h2>
                             <div class="product">
                                <img src='<%#  Eval("Anh") %>'alt='<%#  Eval("TenSP") %>' />
                            <div class="info">
                        </summary>
                        <div class="section">
                            <p><strong>Mã đơn:</strong> <%# Eval("MaDon") %></p>
                            <p><strong>Ngày đặt:</strong> <%# Eval("NgayDat") %></p>
                            <p><strong>Trạng thái:</strong> <%# Eval("TrangThai") %></p>
                            <p><strong>Người nhận:</strong> <%# Eval("HoTen") %></p>
                            <p><strong>SĐT:</strong> <%# Eval("SDT") %></p>
                            <p><strong>Địa chỉ:</strong> <%# Eval("DiaChi") %></p>
                            <p><strong>Phương thức thanh toán:</strong> <%# Eval("PhuongThucTT") %></p>
                            <p><strong>Tổng tiền:</strong> <%# Eval("TongTien") %></p>
                        </div>
                    </details>
                </ItemTemplate>
            </asp:Repeater>

           
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
