$(function() {

  
  $('.post__top--list.delete-a').on('click', function() {
      $('#overlay1, #modalWindow1').fadeIn();
  });

  $('#close1').on('click', function() {
    $('#overlay1, #modalWindow1').fadeOut();
  });

  locateCenter();
  $(window).resize(locateCenter);

  function locateCenter() {
    let w = $(window).width();
    let h = $(window).height();
    
    let cw = $('#modalWindow1').outerWidth();
    let ch = $('#modalWindow1').outerHeight();
  
    $('#modalWindow1').css({
      'left': ((w - cw) / 2) + 'px',
      'top': ((h - ch) / 2) + 'px'
    });
  }

});