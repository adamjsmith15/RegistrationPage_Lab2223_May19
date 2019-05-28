var line = $('.line');
var line1 = $('.line-1');
var line2 = $('.line-2');
var text = $('.text');
var tl = new TimelineMax();

tl.to(line, 2, {height:300, ease:  Power4.easeInOut})
  .to(line, 2, {rotation:35}, "-=0.5")
  .to(line2, 0.2, {top:-30}, "=-2")
  .to(line1, 2.5, {left:-300, ease: Power4.easeInOut})
  .to(line2, 2.5, {left:300, ease: Power3.easeInOut}, "-=2.5")
  .to(text, 2.5, { width:230, marginLeft:175, ease: Power4.easeInOut }, "=-2.5")
  ;

var mybubbles = document.getElementsByClassName("ani-bubble");

var bubblecolors = [ "#0000ff", "#1aff1a", "#ff0000" ];

for (var i = 0; i < mybubbles.length; i++) {

  mybubbles[i].style.backgroundColor = bubblecolors[Math.floor(Math.random() * bubblecolors.length)];
  mybubbles[i].style.opacity = Math.random()*.75;

  var bubblesize = (Math.floor(Math.random() * 9)+2) * 50;

  mybubbles[i].style.width = bubblesize+"px";
  mybubbles[i].style.height = bubblesize+"px";
  mybubbles[i].style.borderRadius = (bubblesize/2)+"px";

  mybubbles[i].style.left = Math.floor(Math.random() * 100) + "%";

  mybubbles[i].style.animationDuration = Math.floor(Math.random() * 16)+8 + "s";
  mybubbles[i].style.animationDelay = Math.floor(Math.random() * 8) + "s";

}

$( document ).ready(function() {
  jQuery.expr.filters.offscreen = function(el) {
  return (
      (el.offsetLeft + el.offsetWidth) < 0 
      || (el.offsetTop + el.offsetHeight) < 0
      || (el.offsetLeft > window.innerWidth || el.offsetTop > window.innerHeight)
    );  
    };
  setInterval(function(){
    $('.ani-bubble').each(function(){
      if($(this).is(':offscreen')){
       var bubbleoffset = Math.floor((Math.random() * 140) - 19);
         $(this).css({ 'left': bubbleoffset+'%' }); 
      }
    });
  },50);
});