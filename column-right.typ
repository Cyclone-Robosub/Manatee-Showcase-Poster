#import "@preview/oasis-align:0.2.0": *
#set image(width: 100%)

= Electrical Systems
The vehicle is powered by a single 16V Lithium Polymer (LiPo) battery which supplies power to the AUV's computers, sensors, and thrusters. Electrical components are  mounted to a 3D-printed internal structure to maximize volume within the tube and efficiently route wires between components. A custom PCB distributes 5V of power from the buck converter to low-voltage components.

#oasis-align(
  figure(
    image("images/internals.jpg"),
    caption: [Primary robot wiring],
  ),
  figure(
    image("images/pcb.jpg"),
    caption: [Custom designed PBCs],
  )
)

#figure(
  image("graphics/electrical-diagram.svg", width: 90%),
  caption: [Robot Electrical Diagram]
)


= Research 
// #oasis-align( 
  // int-frac: .78,
#grid(
  columns: (1fr, 5in),
  [
    Beyond the competition, Cyclone RoboSub is contributing to environmental research efforts through field deployments and interdepartmental collaborations. Equipped with sensors to measure temperature, depth, pH, and dissolved oxygen, the vehicle can collect environmental data and is scheduled to take two transects along the UC Davis Arboretum. The team is also exploring opportunities to contribute to marine science research at the Bodega Marine Lab.
  ],
  [
    #figure(
      image("images/arb.jpg"),
      caption: [UC Davis Arboretum],
    )
    #v(-0.65em)
    #figure(
      image("images/research.jpg"),
      caption: [Research Instrumentation],
    )
  ]
)
= Acknowledgements
#set text(.7em)

We would like to extent a huge thank you to our sponsors, including Citris and the Banatao Institute, Nortek,   InfoSec Decoded, and RIX Industries. In addition, we would like to thank our parents,  and the Engineering Student Design Center for the tools and workspace.

We would also like to thank all of our highly dedicated team members, including but not limited to
#let members = json("data/members.json").map(it => it.name)
#for m in members {
  if m != members.first() and m != members.last() [, ]
  if m == members.last() [, and ]
  m
}.