// 使い方モーダル画面
$(function() {  
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

// (?)削除ボタンモーダル画面
$(function() {  
  $('.post__top--list.aaa').on('click', function() {
    $('#overlay, #modalWindow').fadeIn();
  });
  
  $('#close1').on('click', function() {
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

$(function(){
  $("i:contains('sentiment_very_satisfied')").addClass("blue");
  $("i:contains('sentiment_neutral')").addClass("green");
  $("i:contains('sentiment_very_dissatisfied')").addClass("red");
});

$(function(){
  $(".notice").hide().fadeIn(1000);
  setTimeout("$('.notice').fadeOut('slow')", 3000);
});
