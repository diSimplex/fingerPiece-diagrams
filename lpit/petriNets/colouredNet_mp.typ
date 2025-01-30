#import "@local/lpit-publisher-papers:0.1.0" : * 

#diagram(node-stroke: black, {
  node((-2,5), "Res", shape: ellipse, name: <res>)
  
  node((2,0), $A$,   shape: circle, name: <a>)
  edge("-|>", $(x,i)$, label-side: left)
  node((2,1), $T 1$, shape: rect, name: <t1>)
  edge("-|>", $(x,i)$, label-side: left)
  node((2,2), $B$,   shape: circle, name: <b>)
  edge("-|>", $(x,i)$, label-side: left)
  node((2,3), $T 2$, shape: rect, name: <t2>)
  edge("-|>", $(x,i)$, label-side: left)
  node((2,4), $C$,   shape: circle, name: <c>)
  edge("-|>", $(x,i)$, label-side: left)
  node((2,5), $T 3$, shape: rect, name: <t3>)
  edge("-|>", $(x,i)$, label-side: left)
  node((2,6), $D$,   shape: circle, name: <d>)
  edge("-|>", $(x,i)$, label-side: left)
  node((2,7), $T 4$, shape: rect, name: <t4>)
  edge("-|>", $(x,i)$, label-side: left)
  node((2,8), $E$,   shape: circle, name: <e>)
  edge("-|>", $(x,i)$, label-side: left)
  node((2,9), $T 5$, shape: rect, name: <t5>)

  edge(
    <t5>,(2,10),(6,10), (6,2),<b>, "-|>", 
    label: [ if $x = p$ \ then $1'(p,i+1)$ \ else empty ],
    label-side: left,
    label-pos: 85%
  )
  edge(
    <t5>,(2,10),(6,10), (6,-1), (2,-1), <a>, "-|>",
    label: [ if $x=q$ \ then $1'(q,i+1)$ \ else empty ],
    label-side: left,
    label-pos: 67.5%
  )

  edge(
    <res>, (1.5,.5), <t1>, "-|>",
    label: $1'r + 1's$,
    label-side: center,
    label-pos: 20%
  )

  edge(
    <res>, (1.5,2.5), <t2>, "-|>",
    label: [ case x of \ $p$ => $2's$ \ | $q$ => $1's$],
    label-side: center,
    label-pos: 20%
  )

  edge(
    <res>, (1.5,4.5), <t3>, "-|>",
    label: [ if $x=p$ then $1't$ \ else empty],
    label-side: center,
    label-pos: 20%
  )

  edge(
    <t3>, (1.5,5.5), <res>, "-|>",
    label: [ if $x=q$ then $1'r$ \ else empty ],
    label-side: center,
    label-pos: 80%
  )

  edge(
    <res>, <t4>, "-|>", label: $t$
  )

  edge(
    <t5>, (1.5,9.5), <res>, "-|>",
    label: [ case x of \ $p$ => $2's+2't$ \ | $q$ => $2's+1't$ ],
    label-side: center,
    label-pos: 70%
  )
})

