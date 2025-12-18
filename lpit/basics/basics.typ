#import "@local/lpit-publisher-papers:0.2.0" : *

= The basics of MetaFun <diag-basics>

The diSimplex/LPiL projects make use of the ConTeXt diagramming package MetaFun
which is in turn based upon MetaPost. We do this by typesetting the diagram
using ConTeXt and then embedding the resulting diagram in the main document as
either a single page pdf graphic #emph[or] as an Encapsulated PostScript (eps)
file#footnote[The choice of pdf or eps depending upon either the latex
used or your target journal.].

To keep things simple, each figure is created in its own file. Among other
reasons, this lets your writing tool typeset and display the results without
having to typeset the rest of your larger document. By default the file name
must #emph[end] with #raw("_mp.tex"), and then be included using
#align(center)[
  #raw("\includeLpilDiagram{firstFigure_mp}")
]
where #raw("firstFigure_mp.tex") is the name of the ConTeXt/MetaFun file
which contains the associated diagram.

For example:

#raw("\loadLpilMetaFunCode{firstFigure_mp.tex}")

#raw(read("firstFigure_mp.typ"), lang: "typst")

#raw("\includeLpilDiagram{firstFigure_mp}")
#include "firstFigure_mp.typ"

= Using the commDiag module <diag-commDiag-basics>

The ConTeXt commDiag module is a collection of MetaPost/MetaFun macros defined
ontop of MetaPost, MetaFun, and Nodes which can be used to draw fairly
sophisticated Categorical Diagrams.

In particular the commDiag module defines various arrows on both the head and
the tail of a given arrow (MetaPost path). It also defines a number of different
arrow bodies.

For example:

#raw("\loadLpilMetaFunCode{arrowsAndLines_mp.tex}")

#raw(read("arrowsAndLines_mp.typ"), lang: "typst")

#raw("\includeLpilDiagram{arrowsAndLines_mp}")

#include "arrowsAndLines_mp.typ"

