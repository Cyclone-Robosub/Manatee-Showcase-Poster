#import "@preview/oasis-align:0.3.3": * 
#set image(width: 100%)

= About Us
#oasis-align(
  swap: true, 
  // int-dir: -1,
  int-frac: .4,
  figure(
    image("images/Team Photo 2026.jpg"),
    caption: [2026 Team Photo]
  ),
  [
    Cyclone RoboSub, founded in 2023, is an engineering student design team at UC Davis developing an autonomous underwater vehicle (AUV). Our interdisciplinary team of 50+ students is organized into three divisions and six sub-teams, each tackling different aspects of this project.
  ],
)

= RoboSub Competition
#oasis-align(
  int-frac: 0.4, 
  figure(
    image("design/robonation.png"),
    // caption: [RoboNation Logo]
  ),
  [
    Teams from around the world compete with custom AUVs which complete tasks such as manipulating objects, maneuvering around obstacles, and firing torpedoes. Our team prioritized navigation-based tasks, eliminating the need for precise manipulation. Cyclone RoboSub will be competing for the second time this coming July!
  ]
)

= Vehicle Design
Our chosen thruster configuration allows for six degrees of freedom while its symmetry simplifies vehicle control and maneuverability. Designed to be slightly positively buoyant and have a low center of mass, the vehicle naturally corrects errors in orientation. All electronics are housed in a 6" acrylic tube with Blue Robotics WetLink penetrators to connect cables to the external environment. Forward and downward facing cameras are enclosed in custom SLA printed watertight enclosures.
#v(-1em)

#figure(
  block(
    clip: true, 
    height: 7.4in,
    image(
      "graphics/annotated-main-assembly.svg",
      width:100%
    ), 
    
  ),
  caption: [Structural CAD of Robot (Made in Onshape)]
)

#v(-1em)
= Vision
// #grid(
//   columns: (1fr, 6in),
#oasis-align(
  // swap: true, 
  // int-dir: -1,
  // int-frac: .4,
  force-frac: .53,
  [
    Two cameras provide video feeds, which are processed by a YOLO vision model to identify objects within the pool and assign position estimates. These estimates are used to inform vehicle navigation and are constantly updated. 
  ],[
  // #figure(
  //   image(
  //     "images/vision-model.jpg"
  //   ),
  //   // caption: [Object Recognition]
  // )
  #figure(
    image(
      "images/Unreal Simulated Gate.png"
    ),
    caption: [Unreal simulation of competition]
  ),
    
  ]
)
#v(-2.2em)
Vision data can be simulated in Unreal Engine and passed into MATLAB Simulink to seamlessly test vision integration.