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
                    <li class="dropdown">
                        <a href="MayAnh.aspx">Máy ảnh</a>
                        <ul class="dropdown-content">
                            <li><a href="MayAnh.aspx?loai=canon">Canon</a></li>
                            <li><a href="MayAnh.aspx?loai=nikon">Nikon</a></li>
                            <li><a href="MayAnh.aspx?loai=sony">Sony</a></li>
                        </ul>
                    </li>
                    <li class="active"><a href="OngKinh.aspx">Ống kính</a></li>
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
        </div>

        <div id="dssp">
            <div class="sp">
                <img src="anh/Ong_kinh_Tamron_35_150mm.jpeg" alt="Ống kính Tamron 35-150mm F/2-2.8 Di III VXD Nikon Z (35-150 Z – Mới)">
                <p class="tensp">Ống kính Tamron 35-150mm F/2-2.8 Di III VXD Nikon Z (35-150 Z – Mới)</p>
                <p class="gia">29,000,000₫ – 33,000,000₫</p>
                <button type="button" class="dathang" onclick="window.location.href='ThanhToan.aspx'">Đặt hàng</button>
            </div>
            <div class="sp">
                <img src="anh/Ong_kinh_Tamron_35_150mm.jpeg" alt="Ống kính Tamron 35-150mm F/2-2.8 Di III VXD Nikon Z (35-150 Z – Mới)">
                <p class="tensp">Ống kính Tamron 35-150mm F/2-2.8 Di III VXD Nikon Z (35-150 Z – Mới)</p>
                <p class="gia">29,000,000₫ – 33,000,000₫</p>
                <button type="button" class="dathang" onclick="window.location.href='ThanhToan.aspx'">Đặt hàng</button>
            </div>
            <div class="sp">
                <img src="anh/Ong_kinh_Tamron_35_150mm.jpeg" alt="Ống kính Tamron 35-150mm F/2-2.8 Di III VXD Nikon Z (35-150 Z – Mới)">
                <p class="tensp">Ống kính Tamron 35-150mm F/2-2.8 Di III VXD Nikon Z (35-150 Z – Mới)</p>
                <p class="gia">29,000,000₫ – 33,000,000₫</p>
                <button type="button" class="dathang" onclick="window.location.href='ThanhToan.aspx'">Đặt hàng</button>
            </div>
            <div class="sp">
                <img src="anh/Ong_kinh_Tamron_35_150mm.jpeg" alt="Ống kính Tamron 35-150mm F/2-2.8 Di III VXD Nikon Z (35-150 Z – Mới)">
                <p class="tensp">Ống kính Tamron 35-150mm F/2-2.8 Di III VXD Nikon Z (35-150 Z – Mới)</p>
                <p class="gia">29,000,000₫ – 33,000,000₫</p>
                <button type="button" class="dathang" onclick="window.location.href='ThanhToan.aspx'">Đặt hàng</button>
            </div>
            <div class="sp">
                <img src="anh/Ong_kinh_Tamron_35_150mm.jpeg" alt="Ống kính Tamron 35-150mm F/2-2.8 Di III VXD Nikon Z (35-150 Z – Mới)">
                <p class="tensp">Ống kính Tamron 35-150mm F/2-2.8 Di III VXD Nikon Z (35-150 Z – Mới)</p>
                <p class="gia">29,000,000₫ – 33,000,000₫</p>
                <button type="button" class="dathang" onclick="window.location.href='ThanhToan.aspx'"Đặt hàng</button>
            </div>
            <div class="sp">
                <img src="anh/Ong_kinh_Tamron_35_150mm.jpeg" alt="Ống kính Tamron 35-150mm F/2-2.8 Di III VXD Nikon Z (35-150 Z – Mới)">
                <p class="tensp">Ống kính Tamron 35-150mm F/2-2.8 Di III VXD Nikon Z (35-150 Z – Mới)</p>
                <p class="gia">29,000,000₫ – 33,000,000₫</p>
                <button type="button" class="dathang" onclick="window.location.href='ThanhToan.aspx'">Đặt hàng</button>
            </div>
            <div class="sp">
                <img src="anh/Ong_kinh_Tamron_35_150mm.jpeg" alt="Ống kính Tamron 35-150mm F/2-2.8 Di III VXD Nikon Z (35-150 Z – Mới)">
                <p class="tensp">Ống kính Tamron 35-150mm F/2-2.8 Di III VXD Nikon Z (35-150 Z – Mới)</p>
                <p class="gia">29,000,000₫ – 33,000,000₫</p>
                <button type="button" class="dathang" onclick="window.location.href='ThanhToan.aspx'">Đặt hàng</button>
            </div>
            <div class="sp">
                <img src="anh/Ong_kinh_Tamron_35_150mm.jpeg" alt="Ống kính Tamron 35-150mm F/2-2.8 Di III VXD Nikon Z (35-150 Z – Mới)">
                <p class="tensp">Ống kính Tamron 35-150mm F/2-2.8 Di III VXD Nikon Z (35-150 Z – Mới)</p>
                <p class="gia">29,000,000₫ – 33,000,000₫</p>
                <button type="button" class="dathang" onclick="window.location.href='ThanhToan.aspx'">Đặt hàng</button>
            </div>
            <div class="sp">
                <img src="anh/Ong_kinh_Tamron_35_150mm.jpeg" alt="Ống kính Tamron 35-150mm F/2-2.8 Di III VXD Nikon Z (35-150 Z – Mới)">
                <p class="tensp">Ống kính Tamron 35-150mm F/2-2.8 Di III VXD Nikon Z (35-150 Z – Mới)</p>
                <p class="gia">29,000,000₫ – 33,000,000₫</p>
                <button type="button" class="dathang" onclick="window.location.href='ThanhToan.aspx'">Đặt hàng</button>
            </div>
            <div class="sp">
                <img src="anh/Ong_kinh_Tamron_35_150mm.jpeg" alt="Ống kính Tamron 35-150mm F/2-2.8 Di III VXD Nikon Z (35-150 Z – Mới)">
                <p class="tensp">Ống kính Tamron 35-150mm F/2-2.8 Di III VXD Nikon Z (35-150 Z – Mới)</p>
                <p class="gia">29,000,000₫ – 33,000,000₫</p>
                <button type="button" class="dathang" onclick="window.location.href='ThanhToan.aspx'">Đặt hàng</button>
            </div>
            <div class="sp">
                <img src="anh/Ong_kinh_Tamron_35_150mm.jpeg" alt="Ống kính Tamron 35-150mm F/2-2.8 Di III VXD Nikon Z (35-150 Z – Mới)">
                <p class="tensp">Ống kính Tamron 35-150mm F/2-2.8 Di III VXD Nikon Z (35-150 Z – Mới)</p>
                <p class="gia">29,000,000₫ – 33,000,000₫</p>
                <button type="button" class="dathang" onclick="window.location.href='ThanhToan.aspx'">Đặt hàng</button>
            </div>
            <div class="sp">
                <img src="anh/Ong_kinh_Tamron_35_150mm.jpeg" alt="Ống kính Tamron 35-150mm F/2-2.8 Di III VXD Nikon Z (35-150 Z – Mới)">
                <p class="tensp">Ống kính Tamron 35-150mm F/2-2.8 Di III VXD Nikon Z (35-150 Z – Mới)</p>
                <p class="gia">29,000,000₫ – 33,000,000₫</p>
                <button type="button" class="dathang" onclick="window.location.href='ThanhToan.aspx'">Đặt hàng</button>
            </div>
            <div class="sp">
                <img src="anh/Ong_kinh_Tamron_35_150mm.jpeg" alt="Ống kính Tamron 35-150mm F/2-2.8 Di III VXD Nikon Z (35-150 Z – Mới)">
                <p class="tensp">Ống kính Tamron 35-150mm F/2-2.8 Di III VXD Nikon Z (35-150 Z – Mới)</p>
                <p class="gia">29,000,000₫ – 33,000,000₫</p>
                <button type="button" class="dathang" onclick="window.location.href='ThanhToan.aspx'">Đặt hàng</button>
            </div>
            <div class="sp">
                <img src="anh/Ong_kinh_Tamron_35_150mm.jpeg" alt="Ống kính Tamron 35-150mm F/2-2.8 Di III VXD Nikon Z (35-150 Z – Mới)">
                <p class="tensp">Ống kính Tamron 35-150mm F/2-2.8 Di III VXD Nikon Z (35-150 Z – Mới)</p>
                <p class="gia">29,000,000₫ – 33,000,000₫</p>
                <button type="button" class="dathang" onclick="window.location.href='ThanhToan.aspx'">Đặt hàng</button>
            </div>
            <div class="sp">
                <img src="anh/Ong_kinh_Tamron_35_150mm.jpeg" alt="Ống kính Tamron 35-150mm F/2-2.8 Di III VXD Nikon Z (35-150 Z – Mới)">
                <p class="tensp">Ống kính Tamron 35-150mm F/2-2.8 Di III VXD Nikon Z (35-150 Z – Mới)</p>
                <p class="gia">29,000,000₫ – 33,000,000₫</p>
                <button type="button" class="dathang" onclick="window.location.href='ThanhToan.aspx'">Đặt hàng</button>
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
