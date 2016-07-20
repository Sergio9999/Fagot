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
  $('#products .price-list').fadeOut('slow');
});

$(document).on('scroll', function () {
        // if the scroll distance is greater than 100px
        if ($(window).scrollTop() > 200) {
          // do something
          $('.site-header').addClass('scrolled-header');
          $('#templatemo_logo').css({
            'background-image':'url(../images/logo2.png)',
            'height': '82px',
            'margin-top':'1px'
          });
         }
         else {
          $('.site-header').removeClass('scrolled-header');
          $('#templatemo_logo').css({
            'background-image':'url(../images/logo3.png)',
            'height': '89px',
            'margin-top':'5px'
          });
         };
      });
$(window).load(function(){
 var $page = $('html, body');
 var flash_error = $('#error_explanation');
 if (flash_error.length == 1){
  var scroll_error = flash_error.offset().top;
  $page.animate({
    scrollTop: scroll_error - 100
  }, 800);
 };
 var alert_info = $('.alert.alert-info');
 if (alert_info.length == 1) {
   var scroll_alert_info = alert_info.offset().top;
   $page.animate({
     scrollTop: scroll_alert_info - 150
   }, 700 )
  };
 })
})



