#import "@preview/oasis-align:0.3.3": *
#set image(width: 100%)

= Electrical Systems
The vehicle is powered by a 4s Lipo battery and features custom PCBs for battery health, telemetry, and thruster control. A fusebox provides over-current protection and the battery management PCB monitors power draw. System architecture and control software run on a Raspberry Pi 5 while a Jetson Orin Nano handles vison processing.

// #v(-1em)

#figure(
  block(
    clip: true, 
    width: 100%,
    height: 6.5in,
    image(
      "graphics/electrical-diagram.pdf",
      width: 115%
    ),
  )
  // caption: [Electrical Diagram],
)


= Research 
#oasis-align( 
  // int-frac: .78,
// #grid(
  // columns: (1fr, 4in),
  [
    Beyond the competition, Cyclone RoboSub is contributing to environmental research efforts through field deployments and interdepartmental collaborations. To enable parallel research effort progress, the team designed an independent senor module to attach to the underside of the vehicle which measures pH, depth, and temperature, allowing us to collect profiles of the UC Davis arboretum.
  ],
  [
    // #v(-0.65em)
    #figure(
      image("images/submerged research module.JPG"),
      // caption: [Sensor Modu],
    )
  ]
)
Most recently, Cyclone RoboSub partnered with the UC Davis Tahoe Environmental Research Center to support periphyton imaging efforts in North Lake Tahoe. 

#oasis-align(
  swap: true,
  figure(
    image(
      "images/Manny in Tahoe.jpeg", 
      // width: 150%
    ), 
    // caption: [Submerged Robot \ ~]
  ),
  figure(
    image(
      "images/Tahoe Deployment.jpg", 
      // width: 90%
    ), 
    // caption: [Incline Village Deployment]
  ),
)


= Acknowledgements
#set text(.7em)

We would like to extent a huge thank you to our sponsors, including Citris and the Banatao Institute, WaterLinked, InfoSec Decoded, and our generous community. In addition, we would like to thank our parents, and the UC Davis Engineering Student Design Center for the tools and workspace.

We would also like to thank all of our highly dedicated team members, including but not limited to
#let members = json("data/members.json").map(it => it.name)
#for m in members {
  if m != members.first() and m != members.last() [, ]
  if m == members.last() [, and ]
  m
}.