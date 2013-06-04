// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery.browser
//= require mobilyslider
//= require styx
//= require selectivizr-min
//= require jquery.ui.core
//= require jquery.ui.widget
//= require jquery.ui.accordion
//= require raphael-min
//= require jquery.fancybox
//= require jquery.fancybox.pack
//= require_tree ./front
//= require about
//= require contacts
//= require jobs
//= require news
//= require production
//= require welcome

$(document).ready(function() {
    /*hack, which get rid of rambler counter*/
    $("a img[alt='Rambler\'s Top100']").parent().attr("style", "position:absolute;top:-10000px; opacity:0.1;")
    var date = new Date()
    $(".copyrights .year").html(date.getFullYear())
});



