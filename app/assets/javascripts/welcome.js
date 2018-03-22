var slideIndex = 1;
showSlides(slideIndex);

// Next/previous controls


// Thumbnail image controls
function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
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
