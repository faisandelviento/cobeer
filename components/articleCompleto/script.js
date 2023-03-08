const carousel = document.querySelector("#carousel");
const prevBtn = document.querySelector("#prevBtn");
const nextBtn = document.querySelector("#nextBtn");
let currentPosition = 0;

prevBtn.addEventListener("click", () => {
  currentPosition = currentPosition - 1 < 0 ? carousel.children.length - 1 : currentPosition - 1;
  carousel.style.transform = `translateX(-${currentPosition * 100}%)`;
});

nextBtn.addEventListener("click", () => {
  currentPosition = (currentPosition + 1) % carousel.children.length;
  carousel.style.transform = `translateX(-${currentPosition * 100}%)`;
});

setInterval(() => {
  currentPosition = (currentPosition + 1) % carousel.children.length;
  carousel.style.transform = `translateX(-${currentPosition * 100}%)`;
}, 10000);
$('section.awSlider .carousel').carousel({
	pause: "hover",
  interval: 2000
});

var startImage = $('section.awSlider .item.active > img').attr('src');
$('section.awSlider').append('<img src="' + startImage + '">');

$('section.awSlider .carousel').on('slid.bs.carousel', function () {
 var bscn = $(this).find('.item.active > img').attr('src');
	$('section.awSlider > img').attr('src',bscn);
});


/* 
Philips ambilight tv
Üzerine gleince duruyor slide
*/