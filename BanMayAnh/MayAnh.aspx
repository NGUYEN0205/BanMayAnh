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
                    <li class="dropdown active">
                        <a href="MayAnh.aspx">Máy ảnh</a>
                        <ul class="dropdown-content">
                            <li><a href="MayAnh.aspx?loai=canon">Canon</a></li>
                            <li><a href="MayAnh.aspx?loai=nikon">Nikon</a></li>
                            <li><a href="MayAnh.aspx?loai=sony">Sony</a></li>
                        </ul>
                    </li>
                    <li><a href="OngKinh.aspx">Ống kính</a></li>
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
                <a href="Detailproduct.aspx">
                    <img src="anh/May_anh_Canon_EOS_R100_Kit_18_45.jpeg" alt="Máy ảnh Canon EOS R100 + Kit 18 45">
                    <p class="tensp">Máy ảnh Canon EOS R100 + Kit 18 45 (Canon R100 – MỚI)</p>
                    <p class="gia">13,000,000₫ – 13,900,000₫</p>
                </a>
                <button type="button" class="dathang" runat="server" onserverclick="Dathang_Click"  >Đặt hàng</button>
            </div>
            <div class="sp">
                <a href="ChiTietSanPham.aspx">
                    <img src="anh/May_anh_Sony_Alpha_NEX_3N.jpeg" alt="Máy ảnh Sony Alpha NEX-3N + 16 f/2.8mm Cũ (hoặc len 1855)">
                    <p class="tensp">Máy ảnh Sony Alpha NEX-3N + 16 f/2.8mm Cũ (hoặc len 1855)</p>
                    <p class="gia">6,000,000đ</p>
                </a>
                <button type="button" class="dathang" runat="server" onserverclick="Dathang_Click">Đặt hàng</button>
            </div>
            <div class="sp">
                <a href="ChiTietSanPham.aspx">
                    <img src="anh/May_anh_MIRRORLESS_NIKON_Z50_body.jpeg" alt="MÁY ẢNH MIRRORLESS NIKON Z50 BODY">
                    <p class="tensp">MÁY ẢNH MIRRORLESS NIKON Z50 BODY</p>
                    <p class="gia">15,000,000₫ – 17,000,000₫</p>
                </a>
                <button type="button" class="dathang" runat="server" onserverclick="Dathang_Click">Đặt hàng</button>
            </div>
            <div class="sp">
                <a href="ChiTietSanPham.aspx">
                    <img src="anh/May_anh_Nikon_Coolpix_P1100.jpeg" alt="Máy ảnh Nikon Coolpix P1100 (P1100 – Mới)">
                    <p class="tensp">Máy ảnh Nikon Coolpix P1100 (P1100 – Mới)</p>
                    <p class="gia">27,000,000₫ – 28,000,000₫</p>
                </a>
                <button type="button" class="dathang" runat="server" onserverclick="Dathang_Click">Đặt hàng</button>
            </div>
            <div class="sp">
                <a href="ChiTietSanPham.aspx">
                    <img src="anh/May_anh_sieu_zoom_fujifilm_finepix_s100fs.png" alt="MÁY ẢNH SIÊU ZOOM FUJIFILM FINEPIX S100FS">
                    <p class="tensp">MÁY ẢNH SIÊU ZOOM FUJIFILM FINEPIX S100FS CŨ</p>
                    <p class="gia">2,000,000đ</p>
                </a>
                <button type="button" class="dathang" runat="server" onserverclick="Dathang_Click">Đặt hàng</button>
            </div>
            <div class="sp">
                <a href="ChiTietSanPham.aspx">
                    <img src="anh/May_anh_Panasonic_Lumix_fz1000.jpg" alt="Panasonic Lumix FZ1000">
                    <p class="tensp">Panasonic Lumix FZ1000</p>
                    <p class="gia">8,500,000₫</p>
                </a>
                <button type="button" class="dathang" runat="server" onserverclick="Dathang_Click">Đặt hàng</button>
            </div>
            <div class="sp">
                <a href="ChiTietSanPham.aspx">
                    <img src="anh/May_anh_Canon_EOS_850D.jpeg" alt="Máy ảnh Canon EOS 850D + 18 55 stm">
                    <p class="tensp">Máy ảnh Canon EOS 850D + 18 55 stm</p>
                    <p class="gia">12,000,000₫ – 15,000,000₫</p>
                </a>
                <button type="button" class="dathang" runat="server" onserverclick="Dathang_Click">Đặt hàng</button>
            </div>
            <div class="sp">
                <a href="ChiTietSanPham.aspx">
                    <img src="anh/May_anh_Canon_M50.jpg" alt="Canon EOS M50 + kit 15-45mm (đen -trắng)">
                    <p class="tensp">Canon EOS M50 + kit 15-45mm (đen -trắng)</p>
                    <p class="gia">12,000,000₫ – 13,500,000₫</p>
                </a>
                <button type="button" class="dathang" runat="server" onserverclick="Dathang_Click">Đặt hàng</button>
            </div>
            <div class="sp">
                <a href="ChiTietSanPham.aspx">
                    <img src="anh/May_anh_fujifilm_X_A7.jpg" alt="FUJIFILM X-A7 Kit Fuji 15-45 use">
                    <p class="tensp">FUJIFILM X-A7 Kit Fuji 15-45 use cũ</p>
                    <p class="gia">15,000,000₫</p>
                </a>
                <button type="button" class="dathang" runat="server" onserverclick="Dathang_Click">Đặt hàng</button>
            </div>
            <div class="sp">
                <a href="ChiTietSanPham.aspx">
                    <img src="anh/May_anh_Sony_Alpha_A3000.jpg" alt="Sony Alpha A3000 & kit">
                    <p class="tensp">Sony Alpha A3000 & kit cũ đẹp</p>
                    <p class="gia">5,000,000đ</p>
                </a>
                <button type="button" class="dathang" runat="server" onserverclick="Dathang_Click">Đặt hàng</button>
            </div>
            <div class="sp">
                <a href="ChiTietSanPham.aspx">
                    <img src="anh/May_anh_Sony_alpha_SLT_A65.jpg" alt="Máy ảnh Sony Alpha SLT-A65">
                    <p class="tensp">Máy ảnh Sony Alpha SLT-A65 kèm lens hàng cũ</p>
                    <p class="gia">4,000,000₫</p>
                </a>
                <button type="button" class="dathang" runat="server" onserverclick="Dathang_Click">Đặt hàng</button>
            </div>
            <div class="sp">
                <a href="ChiTietSanPham.aspx">
                    <img src="anh/May_anh_MIRRORLESs_Canon_EOS-m5.png" alt="Máy ảnh Mirrorless Canon EOS M5">
                    <p class="tensp">Máy ảnh Mirrorless Canon EOS M5 (Kèm kit) cũ</p>
                    <p class="gia">12,000,000₫</p>
                </a>
                <button type="button" class="dathang" runat="server" onserverclick="Dathang_Click">Đặt hàng</button>
            </div>
            <div class="sp">
                <a href="ChiTietSanPham.aspx">
                    <img src="anh/May_anh_Canon_M50_Mark_II.png" alt="CANON M50 MARK II">
                    <p class="tensp">CANON M50 MARK II kèm lens 15-45 (m50 m2)</p>
                    <p class="gia">15,000,000₫</p>
                </a>
                <button type="button" class="dathang" runat="server" onserverclick="Dathang_Click">Đặt hàng</button>
            </div>
            <div class="sp">
                <a href="ChiTietSanPham.aspx">
                    <img src="anh/May_anh_Canon_EOS_77D.jpg" alt="Canon EOS 77D">
                    <p class="tensp">Canon EOS 77D kèm 18 55 stm cũ</p>
                    <p class="gia">9,000,000₫ – 11,500,000₫</p>
                </a>
                <button type="button" class="dathang" runat="server" onserverclick="Dathang_Click">Đặt hàng</button>
            </div>
            <div class="sp">
                <a href="ChiTietSanPham.aspx">
                    <img src="anh/May_anh_DSLR_Canon_EOS1DX.png" alt="MÁY ẢNH DSLR CANON EOS 1DX MARK II" />
                    <p class="tensp">MÁY ẢNH DSLR CANON EOS 1DX MARK II Cũ"</p>
                    <p class="gia">18,000,000₫ – 26,000,000₫</p>
                </a>
                <button type="button" class="dathang" runat="server" onserverclick="Dathang_Click">Đặt hàng</button>
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
