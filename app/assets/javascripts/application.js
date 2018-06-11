// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
// = require ckeditor/init
// = require rails-ujs
// = require turbolinks
// = require jquery
// = require jquery.slick
// = require bootstrap-sprockets
// = require_tree .

$(window).load(function(){
   // PAGE IS FULLY LOADED
   // FADE OUT YOUR OVERLAYING DIV
   let portada = document.getElementsByClassName("cover-magazzine")[0];
   let home = document.getElementsByClassName("home-container")[0];
   setTimeout(()=>{
     portada.style.opacity = '0';
     setTimeout(()=>{
       portada.style.display = 'none'
     },2000);
     setTimeout(()=>{
       home.style.display = 'block'
     },100);
   },5000);
});
$(document).ready(function() {
    $('.hover').bind('touchstart touchend', function(e) {
        e.preventDefault();
        $(this).toggleClass('hover_effect');
    });
});
