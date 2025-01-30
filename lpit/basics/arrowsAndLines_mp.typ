#import "@local/lpit-publisher-papers:0.1.0" : * 

#diagram({
  let positions = (0, 1, 2, 3, 4, 5, 6)

  for aPos in positions {
    node((0, aPos), $a$)
    node((1, aPos), $b$)
    node((2, aPos), $c$)
    node((3, aPos), $d$)
  }

  edge((0,0), (1,0), "<-")
  edge((1,0), (2,0), $f$, "-")
  edge((2,0), (3,0), "->")

  edge((0,1), (1,1), "<-|")
  edge((1,1), (2,1), $f$, "~")
  edge((2,1), (3,1), "|->")

  edge((0,2), (1,2), "<<-hook'")
  edge((1,2), (2,2), $f$, "=")
  edge((2,2), (3,2), "hook->>")

  edge((0,3), (1,3), "<|-o", decorations: cetz.decorations.wave.with(amplitude:.1))
  edge((1,3), (2,3), $f$, "coil")
  edge((2,3), (3,3), "o-|>", decorations: cetz.decorations.wave.with(amplitude:.1))

  edge((0,4), (1,4), "<{..*'")
  edge((1,4), (2,4), $f$, "zigzag")
  edge((2,4), (3,4), "*..}>")

  edge((0,5), (1,5), "<<<--[]'")
  edge((1,5), (2,5), $f$, "zigzag", bend: 50deg)
  edge((2,5), (3,5), "[]-->>>")

  edge((0,6), (1,6), "harpoon'-<>'")
  edge((1,6), (2,6), $f$, "zigzag", bend: -20deg)
  edge((2,6), (3,6), "<>-harpoon")
})

