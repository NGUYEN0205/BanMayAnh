<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MayAnh.aspx.cs" Inherits="BanMayAnh.DanhMucSanPham" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="MayAnh.css" />
    <link rel="stylesheet" href="Menu.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="header">
            <div id="logobg"><img id="logo" src="anh/logo.png"></div>
            <div id="menu">
                <ul id="menu-items">
                    <li><a href="TrangChu.aspx">Trang chủ</a></li>
                    <li class="dropdown" id="mayanh" runat="server">
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

            <div id="menu-toggle">☰</div>

            <div id="blogin" runat="server">
                <input id="login" type="submit" runat="server" onserverclick="Login_Click" value="Đăng nhập"/>
                <input id="register" type="submit" runat="server" onserverclick="Register_Click" value="Đăng ký"/>
            </div>

            <div id="alogin" runat="server">
                <input id="logout" type="submit" runat="server" onclick="return confirm('Bạn có chắc muốn thoát không?');" onserverclick="Logout_Click" value="Đăng xuất">
            </div>
        </div>

       <div id="dssp" >
            <asp:Repeater ID="rptProducts" runat="server" OnItemCommand="rptProducts_ItemCommand">
                <ItemTemplate>
                    <div class="sp">
                        <a href='<%# Eval("Link") %>'>
                            <img src='<%# Eval("Anh") %>' alt='<%# Eval("TenSP") %>' />
                            <p class="tensp"><%# Eval("TenSP") %></p>
                            <p class="gia"><%# Eval("Gia") %></p>
                        </a>
                        <asp:Button runat="server" Text="Đặt hàng" CssClass="dathang" CommandName="Dathang" CommandArgument='<%# Eval("Id") %>' />
                    </div>
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
    <script>
        document.getElementById('menu-toggle').addEventListener('click', function () {
            document.getElementById('menu-items').classList.toggle('active');
        });
    </script>
</body>
</html>
