
let currentIndex = 0;
function swapToNextThumb() {
    const mainImg = document.getElementById("main-image");
    const thumbs = document.querySelectorAll(".thumb");
    if (thumbs.length === 0) return;

    currentIndex = (currentIndex + 1) % thumbs.length;
    const nextThumb = thumbs[currentIndex];

    mainImg.style.transition = "opacity 0.4s ease";
    mainImg.style.opacity = "0";
    setTimeout(() => {
        mainImg.src = nextThumb.src;
        mainImg.style.opacity = "1";
    }, 300);
}

function setMainImage(imgElement) {
    const mainImg = document.getElementById("main-image");
    const thumbs = document.querySelectorAll(".thumb");

    mainImg.style.opacity = "0";
    setTimeout(() => {
        mainImg.src = imgElement.src;
        mainImg.style.opacity = "1";
    }, 200);
    currentIndex = Array.from(thumbs).indexOf(imgElement);
}
/*let loaiDangChon = null;
let mauDangChon = null;
let giaDangChon = null;

function chonLoai(button, loai) {
    const list = document.getElementById(`${loai}-list`);
    const isVisible = list.classList.contains('active');

    document.querySelectorAll('.phanloai').forEach(btn => btn.classList.remove('active'));
    document.querySelectorAll('.color-price-list').forEach(ul => ul.classList.remove('active'));

    if (!isVisible) {
        list.classList.add('active');
        button.classList.add('active');
        loaiDangChon = loai;
    } else {
        loaiDangChon = null;
    }

    mauDangChon = null;
    giaDangChon = null;
    document.querySelectorAll('.color-price-list li').forEach(li => li.classList.remove('selected'));
    document.getElementById('giaChonText').textContent = "46.900.000 ~ 49.490.000₫";
}

function chonMau(item, mau, gia) {
    mauDangChon = mau;
    giaDangChon = gia;

    document.querySelectorAll('.color-price-list li').forEach(li => li.classList.remove('selected'));
    item.classList.add('selected');

    document.getElementById('giaChonText').textContent = `${gia}`;
}
function muaNgay() {
    if (!loaiDangChon || !mauDangChon || !giaDangChon) {
        alert("Vui lòng chọn loại và màu sản phẩm trước khi mua.");
        return;
    }
    const quantity = document.getElementById("quantity").value || 1;
    window.location.href = `ThanhToan.aspx?loai=${encodeURIComponent(loaiDangChon)}&mau=${encodeURIComponent(mauDangChon)}&gia=${encodeURIComponent(giaDangChon)}&soluong=${quantity}`;
}

function GioHang() {
    if (!loaiDangChon || !mauDangChon || !giaDangChon) {
        alert("Vui lòng chọn loại và màu sản phẩm trước khi thêm vào giỏ hàng.");
        return;
    }

    const quantity = document.getElementById("quantity").value || 1;
    window.location.href = `GioHang.aspx?loai=${encodeURIComponent(loaiDangChon)}&mau=${encodeURIComponent(mauDangChon)}&gia=${encodeURIComponent(giaDangChon)}&soluong=${quantity}`;
}
window.GioHang = GioHang;
window.chonLoai = chonLoai;
window.chonMau = chonMau;
window.muaNgay = muaNgay;
*/






