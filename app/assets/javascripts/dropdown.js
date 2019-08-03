$(document).on('turbolinks:load',function(){
  
    $('.dropdown').hide();
    
    $('img').hover(function(){
      debugger;
      $(".dropdown",).fadeIn();
    }, function(){
      $(".dropdown").fadeOut();
    });
  
});
