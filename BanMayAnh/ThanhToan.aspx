<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThanhToan.aspx.cs" Inherits="BanMayAnh.ThanhToan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="ThanhToan.css" />
</head>
<body>
    <form id="form1" runat="server">
        <h1 style="text-align:center"><b>THANH TOÁN</b></h1>

        <label style="margin-left: 30px; font-size:20px"><b>*Thông tin người nhận</b></label><br/>
        
        <div>
            <label for="HoTen" style="margin-left: 20px;margin-bottom: 10px 0 5px;"><b>Họ và tên người nhận</b></label><br/>
            <input id="HoTen" name="HoTen" class="nhap" value="" placeholder="Nhập họ và tên" runat="server"/>
            <div id="HoTenLoi" class="Loi" runat="server"></div>
        </div>

        <div>
             <label for="SDT" style="margin-left: 20px;margin-bottom: 10px 0 5px;"><b>Số điện thoại</b></label><br/>
             <input id="SDT" name="SDT" class="nhap" value="" placeholder="Nhập số điện thoại" runat="server"/>
             <div id="SDTLoi" class="Loi" runat="server"></div>
        </div>

        <div>
            <label for="DiaChi" style="margin-left: 20px;margin-bottom: 10px 0 5px;"><b>Địa chỉ nhận hàng</b></label><br/>
            <input id="DiaChi" name="DiaChi" class="nhap" value="" placeholder="Nhập địa chỉ nhận hàng" runat="server"/>
            <div id="DiaChiLoi" class="Loi" runat="server"></div>
        </div>

        <div>
            <label for="LoaiDiaChi" style="margin-left: 20px;margin-bottom: 10px 0 5px;"><b>Loại địa chỉ</b></label><br />
            <input type="radio" name="LoaiDiaChi" id="NhaRieng" value="Nhà riêng" checked runat="server" style="margin-left: 20px; accent-color: #7a5cff; border: 1px solid #7a5cff;" />Nhà riêng
            <input type="radio" name="LoaiDiaChi" id="ChoLam" value="Chỗ làm" runat="server" style="margin-left: 20px; accent-color: #7a5cff; border: 1px solid #7a5cff;" />Chỗ làm
        </div>

        <div>
            <label for="Voucher" style="margin-left: 20px;"><b>Chọn voucher ></b></label><br/>
        </div>
       
        <div>
             <label for="PhuongThucThanhToan" style="margin-left: 20px;margin-bottom: 10px 0 5px;"><b>Chọn phương thức thanh toán</b></label><br />
             <input type="radio" name="PhuongThucThanhToan" id="COD" value="Thanh toán khi nhận hàn" checked runat="server" style="margin-left: 30px; accent-color: #7a5cff; border: 1px solid #7a5cff;" />Thanh toán khi nhận hàng<br />
             <input type="radio" name="PhuongThucThanhToan" id="Vi" value="Ví điện tử momo" runat="server" style="margin-left: 30px; accent-color: #7a5cff; border: 1px solid #7a5cff;" />Ví điện tử MoMo<br />
             <input type="radio" name="PhuongThucThanhToan" id="Zalopay" value="Zalopay" runat="server" style="margin-left: 30px; accent-color: #7a5cff; border: 1px solid #7a5cff;" />Zalopay<br />
             <input type="radio" name="PhuongThucThanhToan" id="Banking" value="Ngần hàng điện tử" runat="server" style="margin-left: 30px; accent-color: #7a5cff; border: 1px solid #7a5cff;" />Ngân hàng điện tử<br />
             <div id="PhuongThucThanhToanLoi" class="Loi" runat="server"></div>
        </div>

        <div>
            <label style="margin-left: 20px; margin-top:40px; font-size:20px"><b>*Thông tin đơn hàng</b></label><br/>
            <table>
                <tr>
                    <td><img id="imgSP" runat="server" alt="" style="margin-left:20px; height:300px;" /></td>
                    <td>
                        <b id="tenSP" runat="server" style="font-size:25px"></b>
                        <p id="giaSP" runat="server" style="font-size:20px; color:red"></p>
                        <p id="soLuong" runat="server" style="font-size:20px;"></p>
                    </td>
                </tr>
            </table>
        </div>
        <hr />
        <div>
            <label style="margin-left: 20px; font-size:20px"><b>Cần thanh toán</b></label><br/>
            <table style="margin-left:20px; font-size:20px">
                <tr>
                    <td width="600">Tổng sản phẩm</td>
                    <td><span id="tongSP" runat="server"></span></td>
                </tr>
                <tr>
                    <td>Vận chuyển</td>
                    <td><span id="phiShip" runat="server">100.000đ</span></td>
                </tr>
                <tr>
                    <td>Giảm giá</td>
                    <td><span id="giamGia" runat="server">0đ</span></td>
                </tr>
                <tr>
                    <td>Cần thanh toán</td>
                    <td style="color:red"><span id="tongTien" runat="server"></span></td>
                </tr>
            </table>
        </div>

        <div style="text-align:center">
            <button type="submit" id="bntThanhToan" onserverclick="BtnThanhToan_Click" runat="server">Thanh toán</button>
        </div>
    </form>

    <script src="ThanhToan.js"></script>
</body>
</html>
