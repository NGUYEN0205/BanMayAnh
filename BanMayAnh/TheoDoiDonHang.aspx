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

         <div class="container">
            <h1>Theo dõi đơn hàng</h1>

             <details>
                 <summary><h2 style="display: inline; color: #007bff;">Sản phẩm</h2>
                     <div class="section">
                        
                        <div class="product">
                            <img src="anh/Canon-7d-mark2-5106-2-scaled.jpg" alt="Sản phẩm 1">
                            <div class="info">
                                <p><strong>Tên:</strong> Canon EOS 7D Mark II cũ</p>
                                <p><strong>Số lượng:</strong> 1</p>
                                <p><strong>Giá:</strong> 8.500.000đ</p>
                            </div>
                        </div>
                    </div>
                 </summary>
                 <!-- Thông tin chung -->
                 <div class="section">
                    <h2>Thông tin đơn hàng</h2>
                    <p><strong>Mã đơn:</strong> #DH123456</p>
                    <p><strong>Ngày đặt:</strong> 10/07/2025</p>
                    <p><strong>Trạng thái:</strong> <span class="status">Đang giao</span></p>
                    <p><strong>Phương thức thanh toán:</strong> Thanh toán khi nhận</p>
                    <p><strong>Tổng tiền:</strong> 8.600.000đ</p>
                 </div>

                 <!-- Thông tin người nhận -->
                 <div class="section">
                    <h2>Thông tin người nhận</h2>
                    <p><strong>Người nhận:</strong> Nguyễn Văn A</p>
                    <p><strong>SĐT:</strong> 0323 456 789</p>
                    <p><strong>Địa chỉ:</strong> 96 Định Công, Hà Nội</p>
                 </div>

                 <div class="section">
                    <h2>Trạng thái giao hàng</h2>
                    <ul class="timeline">
                        <li>🛒 Đã đặt hàng - 10/07/2025 10:00</li>
                        <li>✅ Đã xác nhận - 10/07/2025 11:00</li>
                        <li>🚚 Đang giao - 11/07/2025 08:30</li>
                    </ul>
                 </div>
             </details>

             <details>
                <summary><h2 style="display: inline; color: #007bff;">Sản phẩm</h2>
                    <div class="section">
           
                       <div class="product">
                           <img src="anh/Canon-7d-mark2-5106-2-scaled.jpg" alt="Sản phẩm 1">
                           <div class="info">
                               <p><strong>Tên:</strong> Canon EOS 7D Mark II cũ</p>
                               <p><strong>Số lượng:</strong> 1</p>
                               <p><strong>Giá:</strong> 8.500.000đ</p>
                           </div>
                       </div>
                   </div>
                </summary>
                <!-- Thông tin chung -->
                <div class="section">
                   <h2>Thông tin đơn hàng</h2>
                   <p><strong>Mã đơn:</strong> #DH123456</p>
                   <p><strong>Ngày đặt:</strong> 10/07/2025</p>
                   <p><strong>Trạng thái:</strong> <span class="status">Đã giao</span></p>
                   <p><strong>Phương thức thanh toán:</strong> Thanh toán khi nhận</p>
                   <p><strong>Tổng tiền:</strong> 8.600.000đ</p>
                </div>

                <!-- Thông tin người nhận -->
                <div class="section">
                   <h2>Thông tin người nhận</h2>
                   <p><strong>Người nhận:</strong> Nguyễn Văn A</p>
                   <p><strong>SĐT:</strong> 0323 456 789</p>
                   <p><strong>Địa chỉ:</strong> 96 Định Công, Hà Nội</p>
                </div>

                <div class="section">
                   <h2>Trạng thái giao hàng</h2>
                   <ul class="timeline">
                       <li>🛒 Đã đặt hàng - 10/07/2025 10:00</li>
                       <li>✅ Đã xác nhận - 10/07/2025 11:00</li>
                       <li>🚚 Đang giao - 11/07/2025 08:30</li>
                       <li>📦 Đã giao - 11/07/2025 14:45</li>
                   </ul>
                </div>
            </details>

           
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
