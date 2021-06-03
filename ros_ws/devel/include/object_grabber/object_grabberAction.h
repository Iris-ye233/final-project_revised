// Generated by gencpp from file object_grabber/object_grabberAction.msg
// DO NOT EDIT!


#ifndef OBJECT_GRABBER_MESSAGE_OBJECT_GRABBERACTION_H
#define OBJECT_GRABBER_MESSAGE_OBJECT_GRABBERACTION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <object_grabber/object_grabberActionGoal.h>
#include <object_grabber/object_grabberActionResult.h>
#include <object_grabber/object_grabberActionFeedback.h>

namespace object_grabber
{
template <class ContainerAllocator>
struct object_grabberAction_
{
  typedef object_grabberAction_<ContainerAllocator> Type;

  object_grabberAction_()
    : action_goal()
    , action_result()
    , action_feedback()  {
    }
  object_grabberAction_(const ContainerAllocator& _alloc)
    : action_goal(_alloc)
    , action_result(_alloc)
    , action_feedback(_alloc)  {
  (void)_alloc;
    }



   typedef  ::object_grabber::object_grabberActionGoal_<ContainerAllocator>  _action_goal_type;
  _action_goal_type action_goal;

   typedef  ::object_grabber::object_grabberActionResult_<ContainerAllocator>  _action_result_type;
  _action_result_type action_result;

   typedef  ::object_grabber::object_grabberActionFeedback_<ContainerAllocator>  _action_feedback_type;
  _action_feedback_type action_feedback;





  typedef boost::shared_ptr< ::object_grabber::object_grabberAction_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::object_grabber::object_grabberAction_<ContainerAllocator> const> ConstPtr;

}; // struct object_grabberAction_

typedef ::object_grabber::object_grabberAction_<std::allocator<void> > object_grabberAction;

typedef boost::shared_ptr< ::object_grabber::object_grabberAction > object_grabberActionPtr;
typedef boost::shared_ptr< ::object_grabber::object_grabberAction const> object_grabberActionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::object_grabber::object_grabberAction_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::object_grabber::object_grabberAction_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::object_grabber::object_grabberAction_<ContainerAllocator1> & lhs, const ::object_grabber::object_grabberAction_<ContainerAllocator2> & rhs)
{
  return lhs.action_goal == rhs.action_goal &&
    lhs.action_result == rhs.action_result &&
    lhs.action_feedback == rhs.action_feedback;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::object_grabber::object_grabberAction_<ContainerAllocator1> & lhs, const ::object_grabber::object_grabberAction_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace object_grabber

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::object_grabber::object_grabberAction_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::object_grabber::object_grabberAction_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::object_grabber::object_grabberAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::object_grabber::object_grabberAction_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::object_grabber::object_grabberAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::object_grabber::object_grabberAction_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::object_grabber::object_grabberAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2a073889befbf1fc30d55b75c12a8c4c";
  }

  static const char* value(const ::object_grabber::object_grabberAction_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2a073889befbf1fcULL;
  static const uint64_t static_value2 = 0x30d55b75c12a8c4cULL;
};

template<class ContainerAllocator>
struct DataType< ::object_grabber::object_grabberAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "object_grabber/object_grabberAction";
  }

  static const char* value(const ::object_grabber::object_grabberAction_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::object_grabber::object_grabberAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"object_grabberActionGoal action_goal\n"
"object_grabberActionResult action_result\n"
"object_grabberActionFeedback action_feedback\n"
"\n"
"================================================================================\n"
"MSG: object_grabber/object_grabberActionGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalID goal_id\n"
"object_grabberGoal goal\n"
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
"MSG: actionlib_msgs/GoalID\n"
"# The stamp should store the time at which this goal was requested.\n"
"# It is used by an action server when it tries to preempt all\n"
"# goals that were requested before a certain time\n"
"time stamp\n"
"\n"
"# The id provides a way to associate feedback and\n"
"# result message with specific goal requests. The id\n"
"# specified must be unique.\n"
"string id\n"
"\n"
"\n"
"================================================================================\n"
"MSG: object_grabber/object_grabberGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#object_grabber action message\n"
"#pass in an object code and the object's frame (w/rt named frame_id)\n"
"#object_grabber will plan approach, grasp and lift of object\n"
"#returns codes regarding outcome\n"
"\n"
"# Action Codes\n"
"\n"
"# Pre-Grasp\n"
"int32 TEST_CODE                         = 0     # \"ping\" action server\n"
"int32 MOVE_TO_WAITING_POSE              = 1     # pre-pose motion: defined on param server out of way of sensors\n"
"\n"
"int32 PLAN_MOVE_TO_GRASP_POSE           = 2     # expects (1) current_object_pose, (2) object_ID, (3) grasp_option, (4) approach_option\n"
"                                                # + send separate \"grasp\" command to gripper\n"
"\n"
"int32 PLAN_MOVE_FINE_TO_GRASP_POSE      = 3     # as above, but finer/slower motion \n"
"\n"
"### Move Object\n"
"int32 PLAN_MOVE_OBJECT_JSPACE           = 4     # move grasped object to dest in joint-space\n"
"                                                # expects: (i) des_object_pose, (2) object_ID, (3) grasp_option\n"
"\n"
"int32 PLAN_MOVE_OBJECT_CSPACE           = 5     # move grasped object to dest in cart-space\n"
"                                                # expects as above\n"
"\n"
"int32 PLAN_MOVE_FINE_OBJECT_CSPACE      = 6     # as above, but finer/slower motion\n"
"\n"
"### Post-Grasp\n"
"int32 PLAN_WITHDRAW_FROM_OBJECT         = 7     # after grasp released, use strategy to depart object \n"
"                                                # (1) object_ID, (2) grasp_option, (3) depart_option\n"
"\n"
"int32 PLAN_WITHDRAW_FINE_FROM_OBJECT    = 8     # as above, but finer/slower motion\n"
"\n"
"### Combined actions \n"
"int32 PLAN_OBJECT_GRASP                 = 9     # combine multiple elements above to acquire an object\n"
"\n"
"int32 CART_MOVE_CURRENT_TO_CART_GOAL    = 10    # plan/execute move to cartesian goal specified in \"geometry_msgs/PoseStamped object_frame\"\n"
"\n"
"int32 GRAB_OBJECT                       = 101   # plan/execute object grasp & lift\n"
"int32 DROPOFF_OBJECT                    = 102   # plan/execute object placement and arm withdrawal\n"
"int32 STRADDLE_OBJECT                   = 103   # plan/execute part of GRAB_OBJECT: move to grasp pose, then halt\n"
"\n"
"int32 SET_SPEED_FACTOR = 10                     # arg: changes trajectory time-scale: > 1.0 ==> slower\n"
"\n"
"### Strategies:\n"
"int32 DEFAULT_GRASP_STRATEGY            = 0     # executes approach and depart strategies. \n"
"\n"
"int32 EXECUTE_PLANNED_MOVE = 100                # accept arm-motion plan and enable its execution\n"
"\n"
"### Gripper commands:\n"
"int32 GRIPPER_PREPARE_GRASP_OBJECT      = 20    # Prepare for grasp approach (open fingers)\n"
"\n"
"int32 GRIPPER_GRASP_OBJECT              = 21    # Perform appropriate action to grasp object (assumes gripper in appropriate pose)\n"
"                                                # Client does not need to know what type of gripper is used\n"
"\n"
"int32 GRIPPER_RELEASE_OBJECT            = 22    # Release a grasped object\n"
"                                                # (1) obj ID, (2) Grasp option\n"
"\n"
"int32 GRIPPER_IS_OBJECT_GRASPED         = 23    # Query (ret bool)\n"
"                                                # (1) object_ID, (2) grasp option, and/or (3)  grasp test parameters; \n"
"\n"
"###                               \n"
"\n"
"#goal:\n"
"int32 action_code                               # See codes above (i.e. MOVE_TO_WAITING_POSE, GRAB_OBJECT, DROPOFF_OBJECT)\n"
"int32 object_id\n"
"int32 grasp_option\n"
"\n"
"# Strategies: approach, grasp, lift, withdraw\n"
"int32 approach_strategy\n"
"int32 lift_object_strategy\n"
"int32 dropoff_strategy\n"
"int32 dropoff_withdraw_strategy\n"
"\n"
"geometry_msgs/PoseStamped object_frame          # wrt system_ref_frame or tf to this frame available\n"
"float64                   speed_factor          # default 1.0\n"
"float64[]                 gripper_test_params\n"
"\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseStamped\n"
"# A Pose with reference coordinate frame and timestamp\n"
"Header header\n"
"Pose pose\n"
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
"\n"
"================================================================================\n"
"MSG: object_grabber/object_grabberActionResult\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalStatus status\n"
"object_grabberResult result\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalStatus\n"
"GoalID goal_id\n"
"uint8 status\n"
"uint8 PENDING         = 0   # The goal has yet to be processed by the action server\n"
"uint8 ACTIVE          = 1   # The goal is currently being processed by the action server\n"
"uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing\n"
"                            #   and has since completed its execution (Terminal State)\n"
"uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)\n"
"uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due\n"
"                            #    to some failure (Terminal State)\n"
"uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,\n"
"                            #    because the goal was unattainable or invalid (Terminal State)\n"
"uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing\n"
"                            #    and has not yet completed execution\n"
"uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,\n"
"                            #    but the action server has not yet confirmed that the goal is canceled\n"
"uint8 RECALLED        = 8   # The goal received a cancel request before it started executing\n"
"                            #    and was successfully cancelled (Terminal State)\n"
"uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be\n"
"                            #    sent over the wire by an action server\n"
"\n"
"#Allow for the user to associate a string with GoalStatus for debugging\n"
"string text\n"
"\n"
"\n"
"================================================================================\n"
"MSG: object_grabber/object_grabberResult\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"#result definitions: response codes\n"
"\n"
"int32 SUCCESS                               = 0\n"
"int32 OBJECT_ACQUIRED                       = 0\n"
"\n"
"int32 FAILED_CANNOT_REACH                   = 1\n"
"int32 FAILED_CANNOT_APPROACH                = 2\n"
"int32 FAILED_CANNOT_REACH_GRASP_POSE        = 3\n"
"int32 FAILED_CANNOT_REACH_DEPART_POSE       = 4\n"
"int32 FAILED_OBJECT_NOT_IN_GRIPPER          = 5\n"
"int32 FAILED_OBJECT_UNKNOWN                 = 6\n"
"\n"
"int32 OBJECT_GRABBER_BUSY                   = 7\n"
"int32 OBJECT_GRABBER_CANCELLED              = 8\n"
"\n"
"int32 FAILED_CANNOT_REACH_DESIRED_POSE      = 9\n"
"int32 FAILED_CANNOT_MOVE_CARTESIAN_FINE     = 13\n"
"int32 FAILED_CANNOT_MOVE_TO_PRE_POSE        = 14\n"
"\n"
"int32 ACTION_CODE_UNKNOWN                   = 15\n"
"\n"
"int32 GRIPPER_IS_OPEN                       = 16\n"
"int32 GRIPPER_IS_CLOSED                     = 17\n"
"int32 GRIPPER_FAILURE                       = 18\n"
"int32 PENDING                               = 19\n"
"int32 OBJECT_DROPPED_OFF                    = 20\n"
"int32 NO_KNOWN_GRASP_OPTIONS_THIS_GRIPPER_AND_OBJECT = 21\n"
"\n"
"int32 return_code\n"
"float64 computed_move_time\n"
"#geometry_msgs/PoseStamped des_flange_pose_stamped_wrt_torso\n"
"\n"
"\n"
"================================================================================\n"
"MSG: object_grabber/object_grabberActionFeedback\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalStatus status\n"
"object_grabberFeedback feedback\n"
"\n"
"================================================================================\n"
"MSG: object_grabber/object_grabberFeedback\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"#feedback: optional; \n"
"\n"
"int32 fdbk\n"
"\n"
;
  }

  static const char* value(const ::object_grabber::object_grabberAction_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::object_grabber::object_grabberAction_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.action_goal);
      stream.next(m.action_result);
      stream.next(m.action_feedback);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct object_grabberAction_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::object_grabber::object_grabberAction_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::object_grabber::object_grabberAction_<ContainerAllocator>& v)
  {
    s << indent << "action_goal: ";
    s << std::endl;
    Printer< ::object_grabber::object_grabberActionGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.action_goal);
    s << indent << "action_result: ";
    s << std::endl;
    Printer< ::object_grabber::object_grabberActionResult_<ContainerAllocator> >::stream(s, indent + "  ", v.action_result);
    s << indent << "action_feedback: ";
    s << std::endl;
    Printer< ::object_grabber::object_grabberActionFeedback_<ContainerAllocator> >::stream(s, indent + "  ", v.action_feedback);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OBJECT_GRABBER_MESSAGE_OBJECT_GRABBERACTION_H