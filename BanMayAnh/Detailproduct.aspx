<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detailproduct.aspx.cs" Inherits="BanMayAnh.WebForm1" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fujifilm X100 VI – Chi tiết sản phẩm</title>
    <link rel="stylesheet" href="detail.css" />
    <script src="j1.js"></script>
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
        <input id="login" type="button" onclick="" value="Đăng nhập">
        <input id="register" type="button" onclick="" value="Đăng ký">
    </div>
</div>
<div class="product-container">
  <!-- CỘT TRÁI: Hình ảnh sản phẩm -->
  <div class="product-image">
    <div class="main-image-wrapper">
      <div class="ribbon">sale</div>
      <asp:Repeater ID="rptProducts" runat="server">
        <ItemTemplate>
          <img id="main-image" src='<%# Eval("Anh") %>' alt='<%# Eval("TenSP") %>' />
        </ItemTemplate>
      </asp:Repeater>
      <button type="button" class="swap-main-btn" onclick="swapToNextThumb()">↔</button>
    </div>

    <div class="gallery-thumbs">
      <div class="thumb-wrapper"><img src="sp1.1.jpeg" onclick="setMainImage(this)" class="thumb" /></div>
      <div class="thumb-wrapper"><img src="sp1.2.jpeg" onclick="setMainImage(this)" class="thumb" /></div>
      <div class="thumb-wrapper"><img src="sp1.3.jpeg" onclick="setMainImage(this)" class="thumb" /></div>
      <div class="thumb-wrapper"><img src="sp1.4.jpeg" onclick="setMainImage(this)" class="thumb" /></div>
      <div class="thumb-wrapper"><img src="sp1.5.jpeg" onclick="setMainImage(this)" class="thumb" /></div>
    </div>
  </div>
  <div class="product-detail">
    <div class="breadcrumb">
      <a href="Trangchu.aspx" class="link">Trang chủ</a><span> / </span>
      <a href="MayAnh.aspx" class="link">Máy ảnh</a><span> / </span>
      <a href="#" class="link">FUJIFILM</a>
    </div>

    <asp:Repeater ID="rptDetail" runat="server">
      <ItemTemplate>
        <h1 class="product-title"><%# Eval("TenSP") %></h1>
        <p class="product-price"><span id="giaChonText"><%# Eval("Gia") %></span></p>
      </ItemTemplate>
    </asp:Repeater>

    <div class="quantity-group">
      <label for="quantity">Số lượng:</label>
      <input type="number" id="quantity" name="quantity" min="1" value="1" />
    </div>

    <div class="product-actions">
      <button type="button" class="add" onclick="GioHang()">Thêm Vào Giỏ Hàng</button>
      <button type="button" class="purchase" onclick="muaNgay()">Mua Ngay</button>
    </div>

    <h3>Các thông số kỹ thuật</h3>
    <ul>
      <li>Cảm biến APS‑C X‑Trans CMOS 5 HR 40,2 MP + X‑Processor 5</li>
      <li>Ổn định hình ảnh IBIS 5‑trục (6 stop)</li>
      <li>Ống kính cố định Fujinon 23 mm f/2</li>
      <li>Quay video 6.2K/30p, 4K/60p, FHD 240p</li>
      <li>Kính ngắm lai OVF/EVF</li>
      <li>Màn hình cảm ứng nghiêng 3″</li>
      <li>Frame.io camera-to-cloud</li>
    </ul>
  </div>
</div>

            <div class="relative-product">
                <h2><b>SẢN PHẨM LIÊN QUAN</b></h2>

                <div class="product-list">
                    <div class="product-item">
                        <div class="ribbon">sale</div>
                        <img src="sp2.jpeg" alt="Sony A7C II" />
                        <h3>Máy ảnh Sony A7C mark II</h3>
                        <p class="price">39.000.000₫ – 44.000.000₫</p>
                        <button class="buy">ĐẶT HÀNG</button>
                    </div>

                    <div class="product-item">
                        <div class="ribbon">sale</div>
                        <img src="sp3.jpeg" alt="Sony ZV-E1" />
                        <h3>Sony ZV-E1 body cũ mới</h3>
                        <p class="price">38.000.000₫ – 45.500.000₫</p>
                        <button class="buy">ĐẶT HÀNG</button>
                    </div>

                    <div class="product-item">
                        <div class="ribbon">sale</div>
                        <img src="sp4.jpeg" alt="Nikon Z7 II" />
                        <h3>Nikon Z7 II mới cũ</h3>
                        <p class="price">35.000.000₫ – 48.000.000₫</p>
                        <button class="buy">ĐẶT HÀNG</button>
                    </div>

                    <div class="product-item">
                        <div class="ribbon">sale</div>
                        <img src="sp5.jpeg" alt="Canon EOS R5" />
                        <h3>Canon EOS R5</h3>
                        <p class="price">48.000.000₫ – 65.000.000₫</p>
                        <button class="buy">ĐẶT HÀNG</button>
                    </div>
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
