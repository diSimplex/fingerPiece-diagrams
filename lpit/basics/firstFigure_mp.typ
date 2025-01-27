//% !TEX root    = firstFigure_mp.tex
//% !TEX program = metafun

#import "@preview/cetz:0.3.2" 

#cetz.canvas({
  import cetz.draw: *
  circle(
    (0,0),
    radius:(8cm, 1cm),
    fill:red,
    name:"firstFigure"
  )
  content(
    "firstFigure",
    fill: white,
    text(white, weight:"bold")[This is text A]
  )
})

