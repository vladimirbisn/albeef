$(document).ready ->
  width = ($(document).width() - $(".main_header .middle").width()) / 2
  $(".main_header .left, .main_header .right").css "width", width