$(".owl-carousel").owlCarousel({
  autoPlay: 3000,
  pagination: false,
  items: 3,
  margin:10,
  responsiveClass: true,
  lazyLoad: true,
  responsive:{
    0:{
      items:1,
      nav:false
    },
    600:{
      items:3,
      nav:false
    },
    1000:{
      items:5,
      nav:false,
      loop:false
    }
  }
});
$('.example1').wmuSlider({
  pagination : false,
});
