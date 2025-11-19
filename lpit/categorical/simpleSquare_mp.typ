#import "@local/lpit-publisher-papers:0.2.0" : *

#diagram({
  node((0,0), $F(X)$, name: <fx>)
  node((1,0), $F(Y)$, name: <fy>)
  node((0,1), $G(X)$, name: <gx>)
  node((1,1), $G(Y)$, name: <gy>)

  edge(<fx>, <fy>, "-|>", $F(f)$, label-side: left)
  edge(<fx>, <gx>, "-|>", $eta_X$, label-side: right)
  edge(<gx>, <gy>, "-|>", $G(f)$, label-side: right)
  edge(<fy>, <gy>, "-|>", $eta_Y$, label-side: left)
})

