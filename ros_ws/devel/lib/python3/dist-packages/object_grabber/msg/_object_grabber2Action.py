# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from object_grabber/object_grabber2Action.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import actionlib_msgs.msg
import genpy
import geometry_msgs.msg
import object_grabber.msg
import std_msgs.msg

class object_grabber2Action(genpy.Message):
  _md5sum = "624ac35725a317eb9e67ebe19d183592"
  _type = "object_grabber/object_grabber2Action"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

object_grabber2ActionGoal action_goal
object_grabber2ActionResult action_result
object_grabber2ActionFeedback action_feedback

================================================================================
MSG: object_grabber/object_grabber2ActionGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalID goal_id
object_grabber2Goal goal

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: actionlib_msgs/GoalID
# The stamp should store the time at which this goal was requested.
# It is used by an action server when it tries to preempt all
# goals that were requested before a certain time
time stamp

# The id provides a way to associate feedback and
# result message with specific goal requests. The id
# specified must be unique.
string id


================================================================================
MSG: object_grabber/object_grabber2Goal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#object_grabber action message
#pass in an object code and the object's frame (w/rt named frame_id)
#object_grabber will plan approach, grasp and lift of object
#returns codes regarding outcome

int32 UPRIGHT_CYLINDER = 1
int32 GRAB_UPRIGHT_CYLINDER = 1 #synonym
int32 TOY_BLOCK = 2
int32 GRAB_TOY_BLOCK = 2 #synonym
int32 GRAB_W_TOOL_Z_APPROACH = 2 #another synonym
int32 PLACE_UPRIGHT_CYLINDER = 3 #new drop-off command
int32 PLACE_TOY_BLOCK = 4 #drop-off toy block
int32 DROPOFF_ALONG_TOOL_Z = 4 #synonym

int32 MOVE_FLANGE_TO = 5 #specify flange pose to reach
int32 FINE_MOVE_FLANGE_TO = 6 #precision move to specified flange pose
int32 MOVE_TO_PRE_POSE = 7 # get hand out of way of camera
int32 JSPACE_MOVE_FLANGE_TO = 8 # joint-space move to specified flange pose

int32 CLOSE_GRIPPER = 100  #commands to open/close gripper; should specify test value
int32 OPEN_GRIPPER = 101

#moved these properties to object_manipulation_properties package/library
#float64 TOY_BLOCK_APPROACH_DIST = 0.05
#expect w/ gripper closed on toy block, finger separation should be more than this value:
#float64 TOY_BLOCK_GRIPPER_CLOSE_TEST_VAL = 80.0


#add more objects here...



#goal:
int32 action_code
int32 object_id
geometry_msgs/PoseStamped desired_frame  
#float64 gripper_test_val


================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: object_grabber/object_grabber2ActionResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
object_grabber2Result result

================================================================================
MSG: actionlib_msgs/GoalStatus
GoalID goal_id
uint8 status
uint8 PENDING         = 0   # The goal has yet to be processed by the action server
uint8 ACTIVE          = 1   # The goal is currently being processed by the action server
uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing
                            #   and has since completed its execution (Terminal State)
uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)
uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due
                            #    to some failure (Terminal State)
uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,
                            #    because the goal was unattainable or invalid (Terminal State)
uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing
                            #    and has not yet completed execution
uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,
                            #    but the action server has not yet confirmed that the goal is canceled
uint8 RECALLED        = 8   # The goal received a cancel request before it started executing
                            #    and was successfully cancelled (Terminal State)
uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be
                            #    sent over the wire by an action server

#Allow for the user to associate a string with GoalStatus for debugging
string text


================================================================================
MSG: object_grabber/object_grabber2Result
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#result definition
#  response codes...
int32 SUCCESS=0
int32 OBJECT_ACQUIRED=0
int32 FAILED_CANNOT_REACH=1
int32 FAILED_CANNOT_APPROACH=2
int32 FAILED_CANNOT_REACH_GRASP_POSE=3
int32 FAILED_CANNOT_REACH_DEPART_POSE=4
int32 FAILED_OBJECT_NOT_IN_GRIPPER=5
int32 FAILED_OBJECT_UNKNOWN=6
int32 OBJECT_GRABBER_BUSY=7
int32 OBJECT_GRABBER_CANCELLED=8
int32 FAILED_CANNOT_REACH_DROPOFF_POSE=9
int32 FAILED_CANNOT_REACH_DROPOFF_APPROACH=10
int32 FAILED_CANNOT_REACH_POSE_CARTESIAN_MOVE=11
int32 FAILED_CANNOT_REACH_JSPACE_MOVE=12
int32 FAILED_CANNOT_MOVE_CARTESIAN_FINE=13
int32 FAILED_CANNOT_MOVE_TO_PRE_POSE=14
int32 ACTION_CODE_UNKNOWN=15
int32 GRIPPER_IS_OPEN=16
int32 GRIPPER_IS_CLOSED=17
int32 GRIPPER_FAILURE=18
int32 PENDING=19
int32 OBJECT_DROPPED_OFF = 20

int32 return_code
geometry_msgs/PoseStamped des_flange_pose_stamped_wrt_torso

================================================================================
MSG: object_grabber/object_grabber2ActionFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
object_grabber2Feedback feedback

================================================================================
MSG: object_grabber/object_grabber2Feedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#feedback: optional; 
int32 fdbk

"""
  __slots__ = ['action_goal','action_result','action_feedback']
  _slot_types = ['object_grabber/object_grabber2ActionGoal','object_grabber/object_grabber2ActionResult','object_grabber/object_grabber2ActionFeedback']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       action_goal,action_result,action_feedback

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(object_grabber2Action, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.action_goal is None:
        self.action_goal = object_grabber.msg.object_grabber2ActionGoal()
      if self.action_result is None:
        self.action_result = object_grabber.msg.object_grabber2ActionResult()
      if self.action_feedback is None:
        self.action_feedback = object_grabber.msg.object_grabber2ActionFeedback()
    else:
      self.action_goal = object_grabber.msg.object_grabber2ActionGoal()
      self.action_result = object_grabber.msg.object_grabber2ActionResult()
      self.action_feedback = object_grabber.msg.object_grabber2ActionFeedback()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.action_goal.header.seq, _x.action_goal.header.stamp.secs, _x.action_goal.header.stamp.nsecs))
      _x = self.action_goal.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.action_goal.goal_id.stamp.secs, _x.action_goal.goal_id.stamp.nsecs))
      _x = self.action_goal.goal_id.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2i3I().pack(_x.action_goal.goal.action_code, _x.action_goal.goal.object_id, _x.action_goal.goal.desired_frame.header.seq, _x.action_goal.goal.desired_frame.header.stamp.secs, _x.action_goal.goal.desired_frame.header.stamp.nsecs))
      _x = self.action_goal.goal.desired_frame.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7d3I().pack(_x.action_goal.goal.desired_frame.pose.position.x, _x.action_goal.goal.desired_frame.pose.position.y, _x.action_goal.goal.desired_frame.pose.position.z, _x.action_goal.goal.desired_frame.pose.orientation.x, _x.action_goal.goal.desired_frame.pose.orientation.y, _x.action_goal.goal.desired_frame.pose.orientation.z, _x.action_goal.goal.desired_frame.pose.orientation.w, _x.action_result.header.seq, _x.action_result.header.stamp.secs, _x.action_result.header.stamp.nsecs))
      _x = self.action_result.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.action_result.status.goal_id.stamp.secs, _x.action_result.status.goal_id.stamp.nsecs))
      _x = self.action_result.status.goal_id.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.action_result.status.status
      buff.write(_get_struct_B().pack(_x))
      _x = self.action_result.status.text
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_i3I().pack(_x.action_result.result.return_code, _x.action_result.result.des_flange_pose_stamped_wrt_torso.header.seq, _x.action_result.result.des_flange_pose_stamped_wrt_torso.header.stamp.secs, _x.action_result.result.des_flange_pose_stamped_wrt_torso.header.stamp.nsecs))
      _x = self.action_result.result.des_flange_pose_stamped_wrt_torso.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7d3I().pack(_x.action_result.result.des_flange_pose_stamped_wrt_torso.pose.position.x, _x.action_result.result.des_flange_pose_stamped_wrt_torso.pose.position.y, _x.action_result.result.des_flange_pose_stamped_wrt_torso.pose.position.z, _x.action_result.result.des_flange_pose_stamped_wrt_torso.pose.orientation.x, _x.action_result.result.des_flange_pose_stamped_wrt_torso.pose.orientation.y, _x.action_result.result.des_flange_pose_stamped_wrt_torso.pose.orientation.z, _x.action_result.result.des_flange_pose_stamped_wrt_torso.pose.orientation.w, _x.action_feedback.header.seq, _x.action_feedback.header.stamp.secs, _x.action_feedback.header.stamp.nsecs))
      _x = self.action_feedback.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.action_feedback.status.goal_id.stamp.secs, _x.action_feedback.status.goal_id.stamp.nsecs))
      _x = self.action_feedback.status.goal_id.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.action_feedback.status.status
      buff.write(_get_struct_B().pack(_x))
      _x = self.action_feedback.status.text
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.action_feedback.feedback.fdbk
      buff.write(_get_struct_i().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.action_goal is None:
        self.action_goal = object_grabber.msg.object_grabber2ActionGoal()
      if self.action_result is None:
        self.action_result = object_grabber.msg.object_grabber2ActionResult()
      if self.action_feedback is None:
        self.action_feedback = object_grabber.msg.object_grabber2ActionFeedback()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.action_goal.header.seq, _x.action_goal.header.stamp.secs, _x.action_goal.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_goal.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.action_goal.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.action_goal.goal_id.stamp.secs, _x.action_goal.goal_id.stamp.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_goal.goal_id.id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.action_goal.goal_id.id = str[start:end]
      _x = self
      start = end
      end += 20
      (_x.action_goal.goal.action_code, _x.action_goal.goal.object_id, _x.action_goal.goal.desired_frame.header.seq, _x.action_goal.goal.desired_frame.header.stamp.secs, _x.action_goal.goal.desired_frame.header.stamp.nsecs,) = _get_struct_2i3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_goal.goal.desired_frame.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.action_goal.goal.desired_frame.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 68
      (_x.action_goal.goal.desired_frame.pose.position.x, _x.action_goal.goal.desired_frame.pose.position.y, _x.action_goal.goal.desired_frame.pose.position.z, _x.action_goal.goal.desired_frame.pose.orientation.x, _x.action_goal.goal.desired_frame.pose.orientation.y, _x.action_goal.goal.desired_frame.pose.orientation.z, _x.action_goal.goal.desired_frame.pose.orientation.w, _x.action_result.header.seq, _x.action_result.header.stamp.secs, _x.action_result.header.stamp.nsecs,) = _get_struct_7d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_result.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.action_result.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.action_result.status.goal_id.stamp.secs, _x.action_result.status.goal_id.stamp.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_result.status.goal_id.id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.action_result.status.goal_id.id = str[start:end]
      start = end
      end += 1
      (self.action_result.status.status,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_result.status.text = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.action_result.status.text = str[start:end]
      _x = self
      start = end
      end += 16
      (_x.action_result.result.return_code, _x.action_result.result.des_flange_pose_stamped_wrt_torso.header.seq, _x.action_result.result.des_flange_pose_stamped_wrt_torso.header.stamp.secs, _x.action_result.result.des_flange_pose_stamped_wrt_torso.header.stamp.nsecs,) = _get_struct_i3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_result.result.des_flange_pose_stamped_wrt_torso.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.action_result.result.des_flange_pose_stamped_wrt_torso.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 68
      (_x.action_result.result.des_flange_pose_stamped_wrt_torso.pose.position.x, _x.action_result.result.des_flange_pose_stamped_wrt_torso.pose.position.y, _x.action_result.result.des_flange_pose_stamped_wrt_torso.pose.position.z, _x.action_result.result.des_flange_pose_stamped_wrt_torso.pose.orientation.x, _x.action_result.result.des_flange_pose_stamped_wrt_torso.pose.orientation.y, _x.action_result.result.des_flange_pose_stamped_wrt_torso.pose.orientation.z, _x.action_result.result.des_flange_pose_stamped_wrt_torso.pose.orientation.w, _x.action_feedback.header.seq, _x.action_feedback.header.stamp.secs, _x.action_feedback.header.stamp.nsecs,) = _get_struct_7d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_feedback.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.action_feedback.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.action_feedback.status.goal_id.stamp.secs, _x.action_feedback.status.goal_id.stamp.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_feedback.status.goal_id.id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.action_feedback.status.goal_id.id = str[start:end]
      start = end
      end += 1
      (self.action_feedback.status.status,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_feedback.status.text = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.action_feedback.status.text = str[start:end]
      start = end
      end += 4
      (self.action_feedback.feedback.fdbk,) = _get_struct_i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.action_goal.header.seq, _x.action_goal.header.stamp.secs, _x.action_goal.header.stamp.nsecs))
      _x = self.action_goal.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.action_goal.goal_id.stamp.secs, _x.action_goal.goal_id.stamp.nsecs))
      _x = self.action_goal.goal_id.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2i3I().pack(_x.action_goal.goal.action_code, _x.action_goal.goal.object_id, _x.action_goal.goal.desired_frame.header.seq, _x.action_goal.goal.desired_frame.header.stamp.secs, _x.action_goal.goal.desired_frame.header.stamp.nsecs))
      _x = self.action_goal.goal.desired_frame.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7d3I().pack(_x.action_goal.goal.desired_frame.pose.position.x, _x.action_goal.goal.desired_frame.pose.position.y, _x.action_goal.goal.desired_frame.pose.position.z, _x.action_goal.goal.desired_frame.pose.orientation.x, _x.action_goal.goal.desired_frame.pose.orientation.y, _x.action_goal.goal.desired_frame.pose.orientation.z, _x.action_goal.goal.desired_frame.pose.orientation.w, _x.action_result.header.seq, _x.action_result.header.stamp.secs, _x.action_result.header.stamp.nsecs))
      _x = self.action_result.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.action_result.status.goal_id.stamp.secs, _x.action_result.status.goal_id.stamp.nsecs))
      _x = self.action_result.status.goal_id.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.action_result.status.status
      buff.write(_get_struct_B().pack(_x))
      _x = self.action_result.status.text
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_i3I().pack(_x.action_result.result.return_code, _x.action_result.result.des_flange_pose_stamped_wrt_torso.header.seq, _x.action_result.result.des_flange_pose_stamped_wrt_torso.header.stamp.secs, _x.action_result.result.des_flange_pose_stamped_wrt_torso.header.stamp.nsecs))
      _x = self.action_result.result.des_flange_pose_stamped_wrt_torso.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7d3I().pack(_x.action_result.result.des_flange_pose_stamped_wrt_torso.pose.position.x, _x.action_result.result.des_flange_pose_stamped_wrt_torso.pose.position.y, _x.action_result.result.des_flange_pose_stamped_wrt_torso.pose.position.z, _x.action_result.result.des_flange_pose_stamped_wrt_torso.pose.orientation.x, _x.action_result.result.des_flange_pose_stamped_wrt_torso.pose.orientation.y, _x.action_result.result.des_flange_pose_stamped_wrt_torso.pose.orientation.z, _x.action_result.result.des_flange_pose_stamped_wrt_torso.pose.orientation.w, _x.action_feedback.header.seq, _x.action_feedback.header.stamp.secs, _x.action_feedback.header.stamp.nsecs))
      _x = self.action_feedback.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.action_feedback.status.goal_id.stamp.secs, _x.action_feedback.status.goal_id.stamp.nsecs))
      _x = self.action_feedback.status.goal_id.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.action_feedback.status.status
      buff.write(_get_struct_B().pack(_x))
      _x = self.action_feedback.status.text
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.action_feedback.feedback.fdbk
      buff.write(_get_struct_i().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.action_goal is None:
        self.action_goal = object_grabber.msg.object_grabber2ActionGoal()
      if self.action_result is None:
        self.action_result = object_grabber.msg.object_grabber2ActionResult()
      if self.action_feedback is None:
        self.action_feedback = object_grabber.msg.object_grabber2ActionFeedback()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.action_goal.header.seq, _x.action_goal.header.stamp.secs, _x.action_goal.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_goal.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.action_goal.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.action_goal.goal_id.stamp.secs, _x.action_goal.goal_id.stamp.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_goal.goal_id.id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.action_goal.goal_id.id = str[start:end]
      _x = self
      start = end
      end += 20
      (_x.action_goal.goal.action_code, _x.action_goal.goal.object_id, _x.action_goal.goal.desired_frame.header.seq, _x.action_goal.goal.desired_frame.header.stamp.secs, _x.action_goal.goal.desired_frame.header.stamp.nsecs,) = _get_struct_2i3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_goal.goal.desired_frame.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.action_goal.goal.desired_frame.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 68
      (_x.action_goal.goal.desired_frame.pose.position.x, _x.action_goal.goal.desired_frame.pose.position.y, _x.action_goal.goal.desired_frame.pose.position.z, _x.action_goal.goal.desired_frame.pose.orientation.x, _x.action_goal.goal.desired_frame.pose.orientation.y, _x.action_goal.goal.desired_frame.pose.orientation.z, _x.action_goal.goal.desired_frame.pose.orientation.w, _x.action_result.header.seq, _x.action_result.header.stamp.secs, _x.action_result.header.stamp.nsecs,) = _get_struct_7d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_result.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.action_result.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.action_result.status.goal_id.stamp.secs, _x.action_result.status.goal_id.stamp.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_result.status.goal_id.id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.action_result.status.goal_id.id = str[start:end]
      start = end
      end += 1
      (self.action_result.status.status,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_result.status.text = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.action_result.status.text = str[start:end]
      _x = self
      start = end
      end += 16
      (_x.action_result.result.return_code, _x.action_result.result.des_flange_pose_stamped_wrt_torso.header.seq, _x.action_result.result.des_flange_pose_stamped_wrt_torso.header.stamp.secs, _x.action_result.result.des_flange_pose_stamped_wrt_torso.header.stamp.nsecs,) = _get_struct_i3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_result.result.des_flange_pose_stamped_wrt_torso.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.action_result.result.des_flange_pose_stamped_wrt_torso.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 68
      (_x.action_result.result.des_flange_pose_stamped_wrt_torso.pose.position.x, _x.action_result.result.des_flange_pose_stamped_wrt_torso.pose.position.y, _x.action_result.result.des_flange_pose_stamped_wrt_torso.pose.position.z, _x.action_result.result.des_flange_pose_stamped_wrt_torso.pose.orientation.x, _x.action_result.result.des_flange_pose_stamped_wrt_torso.pose.orientation.y, _x.action_result.result.des_flange_pose_stamped_wrt_torso.pose.orientation.z, _x.action_result.result.des_flange_pose_stamped_wrt_torso.pose.orientation.w, _x.action_feedback.header.seq, _x.action_feedback.header.stamp.secs, _x.action_feedback.header.stamp.nsecs,) = _get_struct_7d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_feedback.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.action_feedback.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.action_feedback.status.goal_id.stamp.secs, _x.action_feedback.status.goal_id.stamp.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_feedback.status.goal_id.id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.action_feedback.status.goal_id.id = str[start:end]
      start = end
      end += 1
      (self.action_feedback.status.status,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_feedback.status.text = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.action_feedback.status.text = str[start:end]
      start = end
      end += 4
      (self.action_feedback.feedback.fdbk,) = _get_struct_i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_2i3I = None
def _get_struct_2i3I():
    global _struct_2i3I
    if _struct_2i3I is None:
        _struct_2i3I = struct.Struct("<2i3I")
    return _struct_2i3I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_7d3I = None
def _get_struct_7d3I():
    global _struct_7d3I
    if _struct_7d3I is None:
        _struct_7d3I = struct.Struct("<7d3I")
    return _struct_7d3I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
_struct_i3I = None
def _get_struct_i3I():
    global _struct_i3I
    if _struct_i3I is None:
        _struct_i3I = struct.Struct("<i3I")
    return _struct_i3I
