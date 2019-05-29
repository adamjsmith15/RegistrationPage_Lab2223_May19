$(function() {
  var animationEnd  = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';
  var animationName1 = 'wobble'; //bounce, flash, pulse, rubberband, shake, swing, tada, wobble, jello
  
  $('.animation').on('mouseover',function() { // click, mousedown, mouseup, mouseover, mouseout, mousemove
    $('.animation').addClass('animated '+animationName1).one(animationEnd,function() {
      $(this).removeClass('animated '+animationName1);
    });
  });
   
}); 


$(function() {
  var animationEnd  = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';
  var animationName2 = 'flipOutY';
  
  $('.animation').on('click',function() {
    $('.animation').addClass('animated '+animationName2).one(animationEnd,function() {
      $(this).removeClass('animated '+animationName2);
      $(this).addClass('hide'); // hide button after animation
      
    });
  });
  
});