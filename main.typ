#let poster(
  title: "Autonomous Underwater Vehicle", 
  leadership: json("data/leaders.json").map(it => [#it.name]),
  advisors: json("data/advisors.json").map(it => [#it.name]), 
  members: json("data/members.json").map(it => [#it.name]), 
  date: datetime.today().display("[month repr:long] [day], [year]"),
  // split: (1fr, 1fr, 1fr),
  split: (13.5in, 1fr, 13.5in),
  print-margin: .5in,
  colors: (rgb("01696cff"), rgb("02979dff"), rgb("48b0b3ff"))
) = {

  set document(author: "Cyclone RoboSub @ UC Davis", title: title)
  
  set page(
    height: 35in + print-margin*2,
    width: 47in + print-margin*2,
    margin: (
      bottom: 1in + print-margin,
      rest: .5in + print-margin,
    ),
    background: image(
      "design/background.svg", 
      width: 48in, 
      height: 36in, 
      scaling: "smooth", 
      fit: "stretch"
    ),
    footer: [
      #set align(horizon)
      #h(1fr)
      #text(white, [2026/06/04])
      #place(
        horizon + left, 
        dx: -.3in,
        image("design/propeller.svg", width: .8in)

      )
    ],
    footer-descent: -.2in,

  )

  set text(
    font: "Montserrat", 
    lang: "en", 
    28pt
  )

  set par(
    justify: true,
    leading: .6em,
    spacing: 1.2em,
  )

  show image: it => box(
    it, 
    radius: 5pt, 
    clip: true
  )
  
  
  set grid(
    gutter: .375in
  )
  
  set heading(numbering: none)
  show heading: set text(
    colors.at(0),
    font: "Prompt",
    weight: "semibold",
  )
  
  show heading.where(level: 1): it => {
    set par(leading: .5em)
    set text(60pt, weight: "semibold")
    v(-.3em)
    block(it.body)
  }
  
  show heading.where(level: 2): it => {
    set text(1.5em, weight: "bold", tracking: 1.5pt)
     v(.5em)
    block(upper(it.body))
  }

  show figure.caption: it => {
    v(-.15em)
    text(
      .7em, 
      fill: luma(30%),
      it
    ) 
  } 

  place(
    top + right, 
    // dx: 1.5em,
    dy: -1.25em, 
    text(
      fill: luma(40%),
      weight: 700, 
      [Station 68]
    )
  ) 

  // place(
  //   bottom + right,
  //   image("design/propeller.svg")
  // )

  grid(
    columns: (auto, 1fr, auto), 
    gutter: 1in, 
    align: bottom + center, 
    image("design/COE_logo_color_cmyk.svg", height: 1.15in),
    text(100pt, font: "Prompt", weight: "bold", fill: colors.at(0), title),
    image("design/Full Title.svg", height: 1.15in),
  )

  v(-.2em)
  line(length: 100%, stroke: 4pt + colors.at(0))
  v(-.2em)
  
  let list(list) = {
    for l in list {
      l + if l != list.last() [, ]
    }
  }

  align(
    center, 
    stack(
      spacing: .7em,
      text(.9em)[*Leadership:* #list(leadership)],
      text(.9em)[*Advisors:* #list(advisors)],
    )
  )
  v(.9em)
  
  // Body
  grid(
    columns: split, 
    column-gutter: 2%,
    // stroke: (x, y) => 
    //   if x == 1 or x == 2 {colors.at(2)},
    include "column-left.typ",
    // grid.vline(position: start),
    include "column-middle.typ",
    include "column-right.typ",

  )  
}

#poster()

