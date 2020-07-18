$(function(){
var mySwiper = new Swiper('.swiper1', {
  loop: true,
  slidesPerGroup: 1,
  slidesPerView: 5,
  navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev'
  }
});

var mySwiper3 = new Swiper('.swiper3', {
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

var mySwiper2 = new Swiper ('.swiper2', {
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