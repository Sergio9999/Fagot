 $(window).ready(function() {
  function logoPosition(){
    var widthLogo = $('#logo').width();
    var widthFooter = $(window).width();
    leftLogo = (widthFooter - widthLogo)/2;
    var heightLogo = $('#logo').height();
    var heightFooter = $('.site-footer').height();
    topLogo = (heightFooter - heightLogo)/2 + 20;
  $('#logo').css({left:leftLogo, top: topLogo});
};
logoPosition();
$(window).resize(function(){
  logoPosition();
  });
})