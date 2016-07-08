 $(window).ready(function() {
  function logoPosition(){
    var widthLogo = $('#logo').width();
    var widthFooter = $(window).width(); //Ширина окна
    var leftLogo = (widthFooter - widthLogo)/2;
    var heightLogo = $('#logo').height();
    var heightFooter = $('.site-footer').height();
    var topLogo = (heightFooter - heightLogo)/2 + 20;
  $('#logo').css({left:leftLogo, top: topLogo});
};
logoPosition();
$(window).resize(function(){
  logoPosition();
  });
$('#products button.price').click(function(){
  $('#products .price-list').show('slow');
});
$('#products .price-list button.fade_button').click(function(){
  $('#products .price-list').fadeOut(2000);
});
})