var select = function(s) {
      return document.querySelector(s);
    }, container = select('.container'), liquidMask = select('.liquidMask'), emptyStraw = select('.emptyStraw'), fullStraw = select('.fullStraw'), lemon = select('.lemon'), glassSVG = select('.glassSVG'), pitcherSVG = select('.pitcherSVG'), pitcherGroup = select('.pitcherGroup'), pitcherLiquidMask = select('.pitcherLiquidMask'), pitcherLiquid = select('.pitcherLiquid'), pour = select('.pour')


TweenMax.set(fullStraw, {
  drawSVG:'0% 0%'
})
TweenMax.set(emptyStraw, {
  drawSVG:'100% 0%'
})
TweenMax.set(pour, {
  drawSVG:'100% 100%'
})

TweenMax.set(container, {
  position:'absolute',
  top:'50%',
  left:'50%',
  xPercent:-50,
  yPercent:-50
})

TweenMax.set([pitcherGroup, pitcherLiquidMask], {
  rotation:0,
  x:450,
  y:50,
  transformOrigin:'0% 0%'
})

TweenMax.set(glassSVG, {
  x:-150,
  y:100
})

var mainTimeline = new TimelineMax({repeat:-1, repeatDelay:1, delay:1});
mainTimeline.to(fullStraw, 0.6, {
  drawSVG:'100% 0%'
})
.to(emptyStraw, 0.6, {
  drawSVG:'100% 100%'
}, '-=0.6')
.to(liquidMask, 3, {
  y:210
})
.to(fullStraw, 0.6, {
  drawSVG:'100% 100%'
}, '-=1')
.to(emptyStraw, 0.6, {
  drawSVG:'100% 0%'
}, '-=1.6')

.to([pitcherGroup, pitcherLiquidMask], 1, {
  rotation:0,
  x:100,
  transformOrigin:'0% 0%'
})

.to([pitcherGroup, pitcherLiquidMask], 1, {
  rotation:-50,
  x:'-=40',
  y:'-=20',
  transformOrigin:'0% 30%'
})

.to(pitcherLiquid, 6, {
  attr:{
    y:380
  }
})
.to(pour, 1, {
  drawSVG:'100% 0%'
}, '-=6')
.to(liquidMask, 3, {
  y:0
}, '-=5')
.to(pour, 1, {
  drawSVG:'0% 0%'
}, '-=3')
.staggerFrom('.fizzUp', 0.2, {
  alpha:0,
  y:'+=20',
  repeat:7,
  yoyo:true
}, 0.061, '-=2.5')
.staggerFrom('.fizzDown', 0.2, {
  alpha:0,
  y:'-=20',
  repeat:7,
  yoyo:true
}, 0.061, '-=2.5')
.to([pitcherGroup, pitcherLiquidMask], 1, {
  rotation:0,
  x:450,
  y:50,  
  transformOrigin:'0% 30%'
})
.set(pitcherLiquid, {
  attr:{
    y:500
  }
},'-=1')
.to(lemon, 0.6, {
  y:0,
  ease:Back.easeOut.config(0.5)
},'-=1')