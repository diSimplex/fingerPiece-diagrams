#import "@preview/codly:1.2.0" : *
#import "@preview/codly-languages:0.1.1": *
#show: codly-init.with()
#codly(languages: codly-languages)

== The basics of drawing Categorical diagrams <fp-diag-cat>

We will need to draw lots of Categorical diagrams.

Here is a first simple square (using MetaFun/Nodes).

#raw("\loadLpilMetaFunCode{simpleSquare_mp.tex}")

#raw(read("simpleSquare_mp.typ"), lang: "typst")

#raw("\includeLpilDiagram{simpleSquare_mp}")

#include "simpleSquare_mp.typ"

Here is a much more advanced example using the commDiag module.

#raw("\loadLpilMetaFunCode{kerCoKerDiagram_mp.tex}")

#raw(read("kerCoKerDiagram_mp.typ"), lang: "typst")

#align(center)[
  #raw("\includeLpilDiagram{kerCoKerDiagram_mp}")

  #include "kerCoKerDiagram_mp.typ"
]
