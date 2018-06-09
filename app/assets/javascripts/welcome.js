

/* function carousel(slideIndex) {
    console.log(slideIndex);
    var i;
    var x = document.getElementsByClassName("myslide");
    console.log(x);
    for (i = 0; i < x.length; i++) {
      x[i].style.display = "none";
    }
    slideIndex++;
    if (slideIndex > x.length) {slideIndex = 1}
    x[slideIndex-1].style.display = "block";
    setTimeout(carousel(slideIndex), 2000); // Change image every 2 seconds
}
/*var i;
*/
// Next/previous controls


// Thumbnail image controls
function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var slides = document.getElementsByClassName("myslide");
  var titles = document.getElementsByClassName("tit1");
  var dots = document.getElementsByClassName("dot");
  slides[0].style.display = "block";
  titles[0].style.display = "block";
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
      titles[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  titles[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
 // Change image every 2 seconds
}
/*
var nn=1;
while (true) {
  console.log(nn)
  showSlides(slideIndex = nn);
  nn++;
  if (nn == 4) {
    nn = 1;
  }
}
*/
