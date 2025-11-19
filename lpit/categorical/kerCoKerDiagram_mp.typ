#import "@local/lpit-publisher-papers:0.2.0" : *

#diagram({

  // place the CD nodes

  // top row
  node((0,0), $0$, name: <zero1>)
  node((1,0), [Ker $f$], name: <kerf>)
  node((2,0), [Ker $a$], name: <kera>)
  node((3,0), [Ker $b$], name: <kerb>)
  node((4,0), [Ker $c$], name: <kerc>)

  // top middle row
  node((2,1), $A$, name: <a>)
  node((3,1), $B$, name: <b>)
  node((4,1), $C$, name: <c>)
  node((5,1), $0$, name: <zero2>)

  // bottom middle row
  node((1,2), $0$, name: <zero3>)
  node((2,2), $A'$, name: <a1>)
  node((3,2), $B'$, name: <b1>)
  node((4,2), $C'$, name: <c1>)

  // bottom row
  node((2,3), [Coker $a$], name: <cokera>)
  node((3,3), [Coker $b$], name: <cokerb>)
  node((4,3), [Coker $c$], name: <cokerc>)
  node((5,3), [Coker $g'$], name: <cokerg1>)
  node((6,3), $0$, name: <zero4>)

  // add the arrows

  // top row
  edge(<zero1>, <kerf>, "-|>", stroke: red)
  edge(<kerf>, <kera>, "-|>", stroke: red)
  edge(<kera>, <kerb>, "-|>", stroke: red)
  edge(<kerb>, <kerc>, "-|>", stroke: red)

  // top -> top-middle rows
  edge(<kera>, <a>, "-|>")
  edge(<kerb>, <b>, "-|>")
  edge(<kerc>, <c>, "-|>")

  // top middle row
  edge(<a>, <b>, $f$, "-|>", stroke: blue)
  edge(<b>, <c>, $g$, "-|>", stroke: blue)
  edge(<c>, <zero2>, "-|>", stroke: blue)

  // top-middle -> bottom-middle rows
  edge(<a>, <a1>, $a$, "-|>", stroke: blue)
  edge(<b>, <b1>, $b$, "-|>", stroke: blue)
  edge(<c>, <c1>, $c$, "-|>", stroke: blue)

  // bottom middle row
  edge(<zero3>, <a1>, "-|>", stroke: blue)
  edge(<a1>, <b1>, $f'$, "-|>", stroke: blue)
  edge(<b1>, <c1>, $g'$, "-|>", stroke: blue)

  // bottom-middle -> bottom rows
  edge(<a1>, <cokera>, "-|>")
  edge(<b1>, <cokerb>, "-|>")
  edge(<c1>, <cokerc>, "-|>")

  // bottom row
  edge(<cokera>, <cokerb>, "-|>", stroke: red)
  edge(<cokerb>, <cokerc>, "-|>", stroke: red)
  edge(<cokerc>, <cokerg1>, "-|>", stroke: red)
  edge(<cokerg1>, <zero4>, "-|>", stroke: red)

  edge(<kerc>, (4.5,0), (1.5,3), <cokera>, $d$, "-|>", stroke: orange)
})

