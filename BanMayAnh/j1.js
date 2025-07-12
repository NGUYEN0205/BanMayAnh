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
    mainImg.src = imgElement.src;
    mainImg.style.opacity = "0";
    setTimeout(() => {
        mainImg.src = imgElement.src;
        mainImg.style.opacity = "1";
    }, 200);
}
