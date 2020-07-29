$(function(){
var mySwiper = new Swiper('.container__swiper1', {
    autoplay: {
  delay: 5000,
},
  loop: true,
  slidesPerGroup: 1,
  slidesPerView: 5,
  navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev'
  }
});

var mySwiper3 = new Swiper('.container__swiper3', {
  slideToClickedSlide: false,
  controller: {
    control: mySwiper,
    inverse: false,
    by: 'slide',
  },
  loop: true,
  slidesPerGroup: 1,
  slidesPerView: 5,
  slideToClickedSlide: true
});
mySwiper.controller.control = mySwiper3;

var mySwiper2 = new Swiper ('.container__swiper2', {
  autoplay: {
  delay: 5000,
},
  loop: true,

  pagination: {
    el: '.swiper-pagination',
    clickable: true,
  },

  navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev',
  },

})
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