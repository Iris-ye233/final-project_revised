# Baxter python KDL library (python3 version)

## Requirements
For ROS noetics (ubuntu 20) or melodic (ubuntu 18), you need install the rocos_kdl library form source code, which can follow the instruction on the website:
https://github.com/orocos/orocos_kinematics_dynamics

## IK Pick and Place Demo
Just follow the instruction of the demo and use the 'baxter_pick_and_place.py' in the 'scripts' folder to instead of the default one, which have something wrong in python3 (may be with the kdl) and can not run now.
https://sdk.rethinkrobotics.com/wiki/IK_Pick_and_Place_Demo

```bash
roslaunch baxter_gazebo baxter_world.launch
```
```bash
rosrun baxter_pykdl ik_pick_and_place_demo.py
```

