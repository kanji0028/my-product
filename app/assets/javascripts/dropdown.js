$(document).on('turbolinks:load',function(){
  
    $('.dropdown').hide();
    
    $('img').hover(function(){
      $(".dropdown",).fadeIn();
    }, function(){
      $(".dropdown").fadeOut();
    });
  
});
