const HoTen = document.getElementById("HoTen")
const SDT = document.getElementById("SDT")
const DiaChi = document.getElementById("DiaChi")
const ThanhToan = document.getElementsByName("PhuongThucThanhToan")

const HoTenLoi = document.getElementById("HoTenLoi")
const SDTLoi = document.getElementById("SDTLoi")
const DiaChiLoi = document.getElementById("DiaChiLoi")
const ThanhToanLoi = document.getElementById("PhuongThucThanhToanLoi")

function HienLoi(Loi, mess) {
    Loi.textContent = mess;
    Loi.style.display = 'block';
}

function AnLoi(Loi) {
    Loi.textContent = "";
    Loi.style.display = 'none';
}

function ValidateHT() {
    const ht = HoTen.value.trim();
    const kieu = /^[A-Za-zÀ-ỹ]+(\s[A-Za-zÀ-ỹ]+)*$/;
    if (ht == "") {
        HienLoi(HoTenLoi, '*Họ tên không được để trống!');
        return false;
    }
    if (!kieu.test(ht)) {
        HienLoi(HoTenLoi, '*Họ tên không hợp lệ!');
        return false;
    }
    AnLoi(HoTenLoi);
    return true;
}

function ValidateSDT() {
    const sdt = SDT.value.trim();
    const kieu = /^(0[3|5|7|8|9])[0-9]{8}$/;
    if (sdt === "") {
        HienLoi(SDTLoi, "*SDT không được để trống.");
        return false;
    }
    if (!kieu.test(sdt)) {
        HienLoi(SDTLoi, "*SDT không đúng định dạng. (chỉ gồm tối đa 10 chữ số và bắt đầu là 03, 05, 07, 08, 09. Vd: 0987654321)")
        return false;
    }
    AnLoi(SDTLoi);
    return true;
}

function ValidateDC() {
    const dc = DiaChi.value.trim();
    const kieu = /^[A-Za-zÀ-ỹ\/0-9]+(\s[A-Za-zÀ-ỹ\/0-9]+)*$/;
    if (dc == "") {
        HienLoi(DiaChiLoi, '*Địa chỉ không được để trống!');
        return false;
    }
    if (!kieu.test(dc)) {
        HienLoi(DiaChiLoi, '*Địa chỉ không hợp lệ!');
        return false;
    }
    AnLoi(DiaChiLoi);
    return true;
}

function VailidatePTTT() {
    let check = false;
    for (let radio of ThanhToan) {
        if (radio.checked) {
            check = true;
            break;
        }
    }
    if (!check) {
        HienLoi(ThanhToanLoi, '*Vui lòng chọn phương thức thanh toán!');
        return false;
    }
    AnLoi(ThanhToanLoi);
    return true;
}

function ValidateAll() {
    const results = [
        ValidateHT(),
        ValidateSDT(),
        ValidateDC(),
        VailidatePTTT(),
    ];
    return results.every(res => res === true);
}

function ktra(event) {
    event.preventDefault();
    if (ValidateAll()) {
        alert('Thanh toán thành công!');
        window.location.href = "TrangChu.aspx";
    } else {
        alert('Vui lòng kiểm tra lại thông tin. Có lỗi ở các trường.');
    }
}

if (HoTen) {
    HoTen.addEventListener('input', ValidateHT);
    HoTen.addEventListener('blur', ValidateHT);
}

if (DiaChi) {
    DiaChi.addEventListener('input', ValidateDC);
    DiaChi.addEventListener('blur', ValidateDC);
}

if (SDT) {
    SDT.addEventListener('input', ValidateSDT);
    SDT.addEventListener('blur', ValidateSDT);
}
