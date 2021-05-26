execute_process(COMMAND "/home/yedi/ros_ws/build/learning_ros_external_pkgs_noetic/gazebo_ros_pkgs/gazebo_plugins/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/yedi/ros_ws/build/learning_ros_external_pkgs_noetic/gazebo_ros_pkgs/gazebo_plugins/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
