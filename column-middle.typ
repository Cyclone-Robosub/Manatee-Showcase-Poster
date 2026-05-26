#import "@preview/oasis-align:0.2.0": * 
#set image(width: 100%)

= Sensors and Controls
The vehicle relies on a combination of sensors to determine its depth, heading, and position within the pool. A Waterlinked A50 DVL employs a 4-beam sonar system to determine the vehicle's velocity relative to the pool bottom. A sensor fusion algorithm combines velocity data from the DVL and acceleration data from an onboard IntertialSense IMU to estimate the vehicle's position. 

All sensor data and vehicle commands are sent over ROS2 which integrates directly with a C-code generated controller. The controller, built in MATLAB Simulink, uses a 6-axis, cascaded PID feedback system to navigate the vehicle to desired waypoints. The controller also has the ability to incorporate position estimates from the stereo vision system to refine its position estimates.

#figure(
  image(
    "graphics/robosub_controls.drawio.pdf" 
    // width: 100%
  ),
  caption: [Simulink Controller Diagram]
)

#v(-.2em)
= Software Architecture
The robot's software architecture is broken up in a way that allows the vehicle to operate in different modes depending on the use case and test setup. For manual control, PS5 controller inputs are mapped to basic vehicle maneuvers. For testing, the software architecture allows for a hardware-in-the-loop setup where a laptop, running MATLAB, can be inserted in place of a C-code generated controller, allowing for on-the-fly controller tuning and adjustments. The system has the ability to interpret both simulated sensor data or live senor data, minimizing the need to actively run the vehicle in the water.

#figure(
  image(
    "graphics/sys-arch.drawio.pdf", 
    width: 100%
  ),
  caption: [Software System Architecture]
)

For competition runs, the vehicle parses a mission file which defines the maneuvers, actions, and waypoints the vehicle must complete. These goals are interpreted and the controller maneuvers the vehicle accordingly. This is done using a decision tree which incorporates fallbacks in the event of a failed objective, allowing the vehicle to progress and recover on the fly. LED strips indicate the vehicle's state and a heartbeat system allows the vehicle to abort or  recover in the event of system interruptions. 