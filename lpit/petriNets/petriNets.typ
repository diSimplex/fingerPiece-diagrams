#import "@local/lpit-publisher-papers:0.2.0" : *

== The basics of drawing Petri Nets <diag-petri-net>

We will need to draw lots of Petri Nets at various levels of abstraction.

Here is a first fairly complex example. It has been re-drawn from page 19 of
Jensen's #emph[Coloured Petri Nets: Basic Concepts, Analysis and Practical Use]
(Volume 1).

#raw("\loadLpilMetaFunCode{colouredNet_mp.tex}")

#raw(read("colouredNet_mp.typ"), lang: "typst")

#raw("\includeLpilDiagram{colouredNet_mp}")

#include "colouredNet_mp.typ"


