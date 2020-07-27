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
//= require rails-ujs
//= require jquery
//= require bootstrap-sprockets
//= require underscore
// require_tree .
//= require jquery_ujs
//= require moment
//= require bootstrap-datetimepicker
//= require moment/ja.js


// var data = {'data-format': 'yyyy-MM-dd hh:mm:ss' };
// $(function(){
//     $('.datepicker').attr(data);
//     $('.datepicker').datetimepicker({locale: 'ja'});
// });


// ツールチップ
$(function () {
	$('[data-toggle="tooltip"]').tooltip();
});

//header装飾
var height = 60;

$(window).scroll(function() {
  var top = $(window).scrollTop();
  if (height < top) {
    $('header').css('background-color', '#ffffff');
    $('header a').css('color', '#000000');
    $('header i').css('color', '#000000');
    $('header li').css('color', '#000000');
    } else {
    $('header').css('background-color', 'transparent');
    $('header a').css('color', '#ffffff');
    $('header i').css('color', '#ffffff');
    $('header li').css('color', '#ffffff');
  }
});
