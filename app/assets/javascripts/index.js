$(function() {

  $("i:contains('restaurant')").on("mouseover mouseout",function(){
    $(this).toggleClass("red");
  });

  $("i:contains('sentiment_very_satisfied')").addClass("blue");
  $("i:contains('sentiment_neutral')").addClass("green");
  $("i:contains('sentiment_very_dissatisfied')").addClass("red");

    $('.header__logo.help').on('click', function() {
      $('#overlay, #modalWindow').fadeIn();
    });
    
    $('#close').on('click', function() {
      $('#overlay, #modalWindow').fadeOut();
    });
    
    locateCenter();
    $(window).resize(locateCenter);
  
    function locateCenter() {
      let w = $(window).width();
      let h = $(window).height();
      
      let cw = $('#modalWindow').outerWidth();
      let ch = $('#modalWindow').outerHeight();
     
      $('#modalWindow').css({
        'left': ((w - cw) / 2) + 'px',
        'top': ((h - ch) / 2) + 'px'
      });
    }

});