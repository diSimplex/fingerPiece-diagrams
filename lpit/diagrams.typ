#import "@preview/cetz:0.3.2" 
#import "@preview/fletcher:0.5.4" as fletcher: diagram, node, edge
#import "@preview/codly:1.2.0" : *
#import "@preview/codly-languages:0.1.1": *

//% !TEX root = diagrams.tex
//% !LPiL preamble = ./dPreamble.tex
//% !LPiL postamble = ./dPostamble.tex
//% !LPiL collection = fingerPieces

//\lpilTitle{fp-diag}[
//  Finger Pieces : Diagrams
//]{
  Finger Pieces : A miscellanea of diagrams
//}
//\author{Stephen Gaito}

//\maketitle

//\begin{abstract}
  In this finger piece, we explore the creation of various types of diagrams,
  from Petri Nets to the Categorical.
//\end{abstract}

#include "basics/basics.typ"

#include "petriNets/petriNets.typ"

#include "categorical/categorical.typ"

== Some other diagrams

#show: codly-init.with()
#codly(languages: codly-languages)

We will use the link()

#diagram(cell-size: 15mm, debug: 3, $
	G edge(f, ->) edge("d", pi, ->>) & im(f) \
	G slash ker(f) edge("ur", tilde(f), "hook-->")
$)

#diagram(debug: 3, $
	e^- edge("rd", "-<|-") & & & edge("ld", "-|>-") e^+ \
	& edge(gamma, "wave") \
	e^+ edge("ru", "-|>-") & & & edge("lu", "-<|-") e^- \
$)

```lisp

; print the Hello World
(write-line "Hello World")

; print the statment
(write-line "I am at 'Tutorials Point'! Learning LISP")
```

#cetz.canvas({
  import cetz.draw: *
  grid((0,0),(15,15), step: 0.5, help-lines: true)
})

