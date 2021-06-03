// Generated by gencpp from file object_grabber/object_grabber2Goal.msg
// DO NOT EDIT!


#ifndef OBJECT_GRABBER_MESSAGE_OBJECT_GRABBER2GOAL_H
#define OBJECT_GRABBER_MESSAGE_OBJECT_GRABBER2GOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseStamped.h>

namespace object_grabber
{
template <class ContainerAllocator>
struct object_grabber2Goal_
{
  typedef object_grabber2Goal_<ContainerAllocator> Type;

  object_grabber2Goal_()
    : action_code(0)
    , object_id(0)
    , desired_frame()  {
    }
  object_grabber2Goal_(const ContainerAllocator& _alloc)
    : action_code(0)
    , object_id(0)
    , desired_frame(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _action_code_type;
  _action_code_type action_code;

   typedef int32_t _object_id_type;
  _object_id_type object_id;

   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _desired_frame_type;
  _desired_frame_type desired_frame;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(UPRIGHT_CYLINDER)
  #undef UPRIGHT_CYLINDER
#endif
#if defined(_WIN32) && defined(GRAB_UPRIGHT_CYLINDER)
  #undef GRAB_UPRIGHT_CYLINDER
#endif
#if defined(_WIN32) && defined(TOY_BLOCK)
  #undef TOY_BLOCK
#endif
#if defined(_WIN32) && defined(GRAB_TOY_BLOCK)
  #undef GRAB_TOY_BLOCK
#endif
#if defined(_WIN32) && defined(GRAB_W_TOOL_Z_APPROACH)
  #undef GRAB_W_TOOL_Z_APPROACH
#endif
#if defined(_WIN32) && defined(PLACE_UPRIGHT_CYLINDER)
  #undef PLACE_UPRIGHT_CYLINDER
#endif
#if defined(_WIN32) && defined(PLACE_TOY_BLOCK)
  #undef PLACE_TOY_BLOCK
#endif
#if defined(_WIN32) && defined(DROPOFF_ALONG_TOOL_Z)
  #undef DROPOFF_ALONG_TOOL_Z
#endif
#if defined(_WIN32) && defined(MOVE_FLANGE_TO)
  #undef MOVE_FLANGE_TO
#endif
#if defined(_WIN32) && defined(FINE_MOVE_FLANGE_TO)
  #undef FINE_MOVE_FLANGE_TO
#endif
#if defined(_WIN32) && defined(MOVE_TO_PRE_POSE)
  #undef MOVE_TO_PRE_POSE
#endif
#if defined(_WIN32) && defined(JSPACE_MOVE_FLANGE_TO)
  #undef JSPACE_MOVE_FLANGE_TO
#endif
#if defined(_WIN32) && defined(CLOSE_GRIPPER)
  #undef CLOSE_GRIPPER
#endif
#if defined(_WIN32) && defined(OPEN_GRIPPER)
  #undef OPEN_GRIPPER
#endif

  enum {
    UPRIGHT_CYLINDER = 1,
    GRAB_UPRIGHT_CYLINDER = 1,
    TOY_BLOCK = 2,
    GRAB_TOY_BLOCK = 2,
    GRAB_W_TOOL_Z_APPROACH = 2,
    PLACE_UPRIGHT_CYLINDER = 3,
    PLACE_TOY_BLOCK = 4,
    DROPOFF_ALONG_TOOL_Z = 4,
    MOVE_FLANGE_TO = 5,
    FINE_MOVE_FLANGE_TO = 6,
    MOVE_TO_PRE_POSE = 7,
    JSPACE_MOVE_FLANGE_TO = 8,
    CLOSE_GRIPPER = 100,
    OPEN_GRIPPER = 101,
  };


  typedef boost::shared_ptr< ::object_grabber::object_grabber2Goal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::object_grabber::object_grabber2Goal_<ContainerAllocator> const> ConstPtr;

}; // struct object_grabber2Goal_

typedef ::object_grabber::object_grabber2Goal_<std::allocator<void> > object_grabber2Goal;

typedef boost::shared_ptr< ::object_grabber::object_grabber2Goal > object_grabber2GoalPtr;
typedef boost::shared_ptr< ::object_grabber::object_grabber2Goal const> object_grabber2GoalConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::object_grabber::object_grabber2Goal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::object_grabber::object_grabber2Goal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::object_grabber::object_grabber2Goal_<ContainerAllocator1> & lhs, const ::object_grabber::object_grabber2Goal_<ContainerAllocator2> & rhs)
{
  return lhs.action_code == rhs.action_code &&
    lhs.object_id == rhs.object_id &&
    lhs.desired_frame == rhs.desired_frame;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::object_grabber::object_grabber2Goal_<ContainerAllocator1> & lhs, const ::object_grabber::object_grabber2Goal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace object_grabber

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::object_grabber::object_grabber2Goal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::object_grabber::object_grabber2Goal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::object_grabber::object_grabber2Goal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::object_grabber::object_grabber2Goal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::object_grabber::object_grabber2Goal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::object_grabber::object_grabber2Goal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::object_grabber::object_grabber2Goal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0ec453df5b9dae92255e6473b05fa39a";
  }

  static const char* value(const ::object_grabber::object_grabber2Goal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0ec453df5b9dae92ULL;
  static const uint64_t static_value2 = 0x255e6473b05fa39aULL;
};

template<class ContainerAllocator>
struct DataType< ::object_grabber::object_grabber2Goal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "object_grabber/object_grabber2Goal";
  }

  static const char* value(const ::object_grabber::object_grabber2Goal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::object_grabber::object_grabber2Goal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#object_grabber action message\n"
"#pass in an object code and the object's frame (w/rt named frame_id)\n"
"#object_grabber will plan approach, grasp and lift of object\n"
"#returns codes regarding outcome\n"
"\n"
"int32 UPRIGHT_CYLINDER = 1\n"
"int32 GRAB_UPRIGHT_CYLINDER = 1 #synonym\n"
"int32 TOY_BLOCK = 2\n"
"int32 GRAB_TOY_BLOCK = 2 #synonym\n"
"int32 GRAB_W_TOOL_Z_APPROACH = 2 #another synonym\n"
"int32 PLACE_UPRIGHT_CYLINDER = 3 #new drop-off command\n"
"int32 PLACE_TOY_BLOCK = 4 #drop-off toy block\n"
"int32 DROPOFF_ALONG_TOOL_Z = 4 #synonym\n"
"\n"
"int32 MOVE_FLANGE_TO = 5 #specify flange pose to reach\n"
"int32 FINE_MOVE_FLANGE_TO = 6 #precision move to specified flange pose\n"
"int32 MOVE_TO_PRE_POSE = 7 # get hand out of way of camera\n"
"int32 JSPACE_MOVE_FLANGE_TO = 8 # joint-space move to specified flange pose\n"
"\n"
"int32 CLOSE_GRIPPER = 100  #commands to open/close gripper; should specify test value\n"
"int32 OPEN_GRIPPER = 101\n"
"\n"
"#moved these properties to object_manipulation_properties package/library\n"
"#float64 TOY_BLOCK_APPROACH_DIST = 0.05\n"
"#expect w/ gripper closed on toy block, finger separation should be more than this value:\n"
"#float64 TOY_BLOCK_GRIPPER_CLOSE_TEST_VAL = 80.0\n"
"\n"
"\n"
"#add more objects here...\n"
"\n"
"\n"
"\n"
"#goal:\n"
"int32 action_code\n"
"int32 object_id\n"
"geometry_msgs/PoseStamped desired_frame  \n"
"#float64 gripper_test_val\n"
"\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseStamped\n"
"# A Pose with reference coordinate frame and timestamp\n"
"Header header\n"
"Pose pose\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::object_grabber::object_grabber2Goal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::object_grabber::object_grabber2Goal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.action_code);
      stream.next(m.object_id);
      stream.next(m.desired_frame);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct object_grabber2Goal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::object_grabber::object_grabber2Goal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::object_grabber::object_grabber2Goal_<ContainerAllocator>& v)
  {
    s << indent << "action_code: ";
    Printer<int32_t>::stream(s, indent + "  ", v.action_code);
    s << indent << "object_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.object_id);
    s << indent << "desired_frame: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.desired_frame);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OBJECT_GRABBER_MESSAGE_OBJECT_GRABBER2GOAL_H
