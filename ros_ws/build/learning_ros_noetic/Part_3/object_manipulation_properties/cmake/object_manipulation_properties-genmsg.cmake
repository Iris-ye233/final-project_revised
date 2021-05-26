# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "object_manipulation_properties: 0 messages, 1 services")

set(MSG_I_FLAGS "-Iroscpp:/opt/ros/noetic/share/roscpp/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(object_manipulation_properties_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/yedi/ros_ws/src/learning_ros_noetic/Part_3/object_manipulation_properties/srv/objectManipulationQuery.srv" NAME_WE)
add_custom_target(_object_manipulation_properties_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "object_manipulation_properties" "/home/yedi/ros_ws/src/learning_ros_noetic/Part_3/object_manipulation_properties/srv/objectManipulationQuery.srv" "geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Pose"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(object_manipulation_properties
  "/home/yedi/ros_ws/src/learning_ros_noetic/Part_3/object_manipulation_properties/srv/objectManipulationQuery.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_manipulation_properties
)

### Generating Module File
_generate_module_cpp(object_manipulation_properties
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_manipulation_properties
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(object_manipulation_properties_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(object_manipulation_properties_generate_messages object_manipulation_properties_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yedi/ros_ws/src/learning_ros_noetic/Part_3/object_manipulation_properties/srv/objectManipulationQuery.srv" NAME_WE)
add_dependencies(object_manipulation_properties_generate_messages_cpp _object_manipulation_properties_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(object_manipulation_properties_gencpp)
add_dependencies(object_manipulation_properties_gencpp object_manipulation_properties_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS object_manipulation_properties_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(object_manipulation_properties
  "/home/yedi/ros_ws/src/learning_ros_noetic/Part_3/object_manipulation_properties/srv/objectManipulationQuery.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_manipulation_properties
)

### Generating Module File
_generate_module_eus(object_manipulation_properties
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_manipulation_properties
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(object_manipulation_properties_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(object_manipulation_properties_generate_messages object_manipulation_properties_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yedi/ros_ws/src/learning_ros_noetic/Part_3/object_manipulation_properties/srv/objectManipulationQuery.srv" NAME_WE)
add_dependencies(object_manipulation_properties_generate_messages_eus _object_manipulation_properties_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(object_manipulation_properties_geneus)
add_dependencies(object_manipulation_properties_geneus object_manipulation_properties_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS object_manipulation_properties_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(object_manipulation_properties
  "/home/yedi/ros_ws/src/learning_ros_noetic/Part_3/object_manipulation_properties/srv/objectManipulationQuery.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_manipulation_properties
)

### Generating Module File
_generate_module_lisp(object_manipulation_properties
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_manipulation_properties
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(object_manipulation_properties_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(object_manipulation_properties_generate_messages object_manipulation_properties_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yedi/ros_ws/src/learning_ros_noetic/Part_3/object_manipulation_properties/srv/objectManipulationQuery.srv" NAME_WE)
add_dependencies(object_manipulation_properties_generate_messages_lisp _object_manipulation_properties_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(object_manipulation_properties_genlisp)
add_dependencies(object_manipulation_properties_genlisp object_manipulation_properties_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS object_manipulation_properties_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(object_manipulation_properties
  "/home/yedi/ros_ws/src/learning_ros_noetic/Part_3/object_manipulation_properties/srv/objectManipulationQuery.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_manipulation_properties
)

### Generating Module File
_generate_module_nodejs(object_manipulation_properties
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_manipulation_properties
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(object_manipulation_properties_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(object_manipulation_properties_generate_messages object_manipulation_properties_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yedi/ros_ws/src/learning_ros_noetic/Part_3/object_manipulation_properties/srv/objectManipulationQuery.srv" NAME_WE)
add_dependencies(object_manipulation_properties_generate_messages_nodejs _object_manipulation_properties_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(object_manipulation_properties_gennodejs)
add_dependencies(object_manipulation_properties_gennodejs object_manipulation_properties_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS object_manipulation_properties_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(object_manipulation_properties
  "/home/yedi/ros_ws/src/learning_ros_noetic/Part_3/object_manipulation_properties/srv/objectManipulationQuery.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_manipulation_properties
)

### Generating Module File
_generate_module_py(object_manipulation_properties
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_manipulation_properties
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(object_manipulation_properties_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(object_manipulation_properties_generate_messages object_manipulation_properties_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yedi/ros_ws/src/learning_ros_noetic/Part_3/object_manipulation_properties/srv/objectManipulationQuery.srv" NAME_WE)
add_dependencies(object_manipulation_properties_generate_messages_py _object_manipulation_properties_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(object_manipulation_properties_genpy)
add_dependencies(object_manipulation_properties_genpy object_manipulation_properties_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS object_manipulation_properties_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_manipulation_properties)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_manipulation_properties
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET roscpp_generate_messages_cpp)
  add_dependencies(object_manipulation_properties_generate_messages_cpp roscpp_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(object_manipulation_properties_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(object_manipulation_properties_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_manipulation_properties)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_manipulation_properties
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET roscpp_generate_messages_eus)
  add_dependencies(object_manipulation_properties_generate_messages_eus roscpp_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(object_manipulation_properties_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(object_manipulation_properties_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_manipulation_properties)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_manipulation_properties
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET roscpp_generate_messages_lisp)
  add_dependencies(object_manipulation_properties_generate_messages_lisp roscpp_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(object_manipulation_properties_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(object_manipulation_properties_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_manipulation_properties)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_manipulation_properties
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET roscpp_generate_messages_nodejs)
  add_dependencies(object_manipulation_properties_generate_messages_nodejs roscpp_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(object_manipulation_properties_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(object_manipulation_properties_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_manipulation_properties)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_manipulation_properties\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_manipulation_properties
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET roscpp_generate_messages_py)
  add_dependencies(object_manipulation_properties_generate_messages_py roscpp_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(object_manipulation_properties_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(object_manipulation_properties_generate_messages_py geometry_msgs_generate_messages_py)
endif()
