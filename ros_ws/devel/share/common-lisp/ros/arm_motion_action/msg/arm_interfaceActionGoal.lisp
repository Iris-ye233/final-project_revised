; Auto-generated. Do not edit!


(cl:in-package arm_motion_action-msg)


;//! \htmlinclude arm_interfaceActionGoal.msg.html

(cl:defclass <arm_interfaceActionGoal> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (goal_id
    :reader goal_id
    :initarg :goal_id
    :type actionlib_msgs-msg:GoalID
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalID))
   (goal
    :reader goal
    :initarg :goal
    :type arm_motion_action-msg:arm_interfaceGoal
    :initform (cl:make-instance 'arm_motion_action-msg:arm_interfaceGoal)))
)

(cl:defclass arm_interfaceActionGoal (<arm_interfaceActionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <arm_interfaceActionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'arm_interfaceActionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_motion_action-msg:<arm_interfaceActionGoal> is deprecated: use arm_motion_action-msg:arm_interfaceActionGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <arm_interfaceActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_motion_action-msg:header-val is deprecated.  Use arm_motion_action-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <arm_interfaceActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_motion_action-msg:goal_id-val is deprecated.  Use arm_motion_action-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <arm_interfaceActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_motion_action-msg:goal-val is deprecated.  Use arm_motion_action-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <arm_interfaceActionGoal>) ostream)
  "Serializes a message object of type '<arm_interfaceActionGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <arm_interfaceActionGoal>) istream)
  "Deserializes a message object of type '<arm_interfaceActionGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<arm_interfaceActionGoal>)))
  "Returns string type for a message object of type '<arm_interfaceActionGoal>"
  "arm_motion_action/arm_interfaceActionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'arm_interfaceActionGoal)))
  "Returns string type for a message object of type 'arm_interfaceActionGoal"
  "arm_motion_action/arm_interfaceActionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<arm_interfaceActionGoal>)))
  "Returns md5sum for a message object of type '<arm_interfaceActionGoal>"
  "9e97718a7ab375036bb56bb9356b4a91")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'arm_interfaceActionGoal)))
  "Returns md5sum for a message object of type 'arm_interfaceActionGoal"
  "9e97718a7ab375036bb56bb9356b4a91")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<arm_interfaceActionGoal>)))
  "Returns full string definition for message of type '<arm_interfaceActionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%arm_interfaceGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: arm_motion_action/arm_interfaceGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#cartesian-move action interface~%#minimally, it may contain just a command code~%#more generally, it may contain desired tool-frame pose, as well~%# as gripper pose (gripper opening, or vacuum gripper on/off)~%# and an arrival time for the move~%# It is assumed that a move starts from the previous commanded pose, or from the current joint state~%~%#return codes provide status info, e.g. if a proposed move is reachable~%~%#define message constants:  ~%uint8 ARM_TEST_MODE = 0~%~%#queries~%uint8 ARM_IS_SERVER_BUSY_QUERY = 1~%uint8 ARM_QUERY_IS_PATH_VALID = 2~%uint8 GET_TOOL_POSE = 5~%uint8 GET_Q_DATA = 7~%~%#requests for motion plans; ~%uint8 PLAN_JSPACE_TRAJ_CURRENT_TO_WAITING_POSE=20~%uint8 PLAN_JSPACE_TRAJ_CURRENT_TO_QGOAL = 21~%uint8 PLAN_JSPACE_TRAJ_CURRENT_TO_CART_TOOL_POSE = 22 #plan a joint-space path from current arm pose to some IK soln of Cartesian goal~%~%uint8 PLAN_CARTESIAN_TRAJ_CURRENT_TO_DES_TOOL_POSE = 23~%uint8 PLAN_CARTESIAN_TRAJ_QSTART_TO_DES_TOOL_POSE = 24~%uint8 PLAN_CARTESIAN_TRAJ_QPREV_TO_DES_TOOL_POSE = 25~%~%uint8 CLEAR_MULTI_TRAJ_PLAN = 26~%uint8 APPEND_MULTI_TRAJ_CART_SEGMENT = 27~%uint8 APPEND_MULTI_TRAJ_JSPACE_SEGMENT = 28~%uint8 TEST_PATH_FOR_DISCONTINUITIES = 29~%uint8 GET_NUM_PATH_SEGMENTS = 30~%uint8 GET_REPLANNED_ARRIVAL_TIMES = 31~%uint8 REPLAN_DISCONTINUITIES = 32~%~%uint8 REFINE_PLANNED_TRAJECTORY = 41 #if used approx IK soln, use this option to refine solns~%uint8 SEGMENT_DISCONTINUOUS_TRAJ = 42 #if soln is discontinuous, segment it into a multi-traj plan~%# return the number of new segments and their respective arrival times~%~%# request to preview plan:~%#uint8 DISPLAY_TRAJECTORY = 50~%~%#MOVE command!~%uint8 EXECUTE_PLANNED_TRAJ = 100~%#specify a segment number to be executed from a multi-segment trajectory~%uint8 EXECUTE_TRAJ_NSEG = 101~%#for a path with discontinuities, command arm to go to first pose of segment nseg~%#specify the path segment in element \"nseg\"~%uint8 GOTO_NSEG_START = 102~%~%#uint8 ARM_DESCEND_20CM=101~%#uint8 ARM_DEPART_20CM=102~%~%~%#goal:~%int32 command_code~%geometry_msgs/PoseStamped des_pose_gripper~%float64[] arm_dp #to command a 3-D vector displacement relative to current pose, fixed orientation~%float64[] q_goal~%float64[] q_start~%int32 nsteps~%float64 arrival_time~%int32 nseg #to choose one of NSEG segments in a multi-traj vector~%#float64 time_scale_stretch_factor~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'arm_interfaceActionGoal)))
  "Returns full string definition for message of type 'arm_interfaceActionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%arm_interfaceGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: arm_motion_action/arm_interfaceGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#cartesian-move action interface~%#minimally, it may contain just a command code~%#more generally, it may contain desired tool-frame pose, as well~%# as gripper pose (gripper opening, or vacuum gripper on/off)~%# and an arrival time for the move~%# It is assumed that a move starts from the previous commanded pose, or from the current joint state~%~%#return codes provide status info, e.g. if a proposed move is reachable~%~%#define message constants:  ~%uint8 ARM_TEST_MODE = 0~%~%#queries~%uint8 ARM_IS_SERVER_BUSY_QUERY = 1~%uint8 ARM_QUERY_IS_PATH_VALID = 2~%uint8 GET_TOOL_POSE = 5~%uint8 GET_Q_DATA = 7~%~%#requests for motion plans; ~%uint8 PLAN_JSPACE_TRAJ_CURRENT_TO_WAITING_POSE=20~%uint8 PLAN_JSPACE_TRAJ_CURRENT_TO_QGOAL = 21~%uint8 PLAN_JSPACE_TRAJ_CURRENT_TO_CART_TOOL_POSE = 22 #plan a joint-space path from current arm pose to some IK soln of Cartesian goal~%~%uint8 PLAN_CARTESIAN_TRAJ_CURRENT_TO_DES_TOOL_POSE = 23~%uint8 PLAN_CARTESIAN_TRAJ_QSTART_TO_DES_TOOL_POSE = 24~%uint8 PLAN_CARTESIAN_TRAJ_QPREV_TO_DES_TOOL_POSE = 25~%~%uint8 CLEAR_MULTI_TRAJ_PLAN = 26~%uint8 APPEND_MULTI_TRAJ_CART_SEGMENT = 27~%uint8 APPEND_MULTI_TRAJ_JSPACE_SEGMENT = 28~%uint8 TEST_PATH_FOR_DISCONTINUITIES = 29~%uint8 GET_NUM_PATH_SEGMENTS = 30~%uint8 GET_REPLANNED_ARRIVAL_TIMES = 31~%uint8 REPLAN_DISCONTINUITIES = 32~%~%uint8 REFINE_PLANNED_TRAJECTORY = 41 #if used approx IK soln, use this option to refine solns~%uint8 SEGMENT_DISCONTINUOUS_TRAJ = 42 #if soln is discontinuous, segment it into a multi-traj plan~%# return the number of new segments and their respective arrival times~%~%# request to preview plan:~%#uint8 DISPLAY_TRAJECTORY = 50~%~%#MOVE command!~%uint8 EXECUTE_PLANNED_TRAJ = 100~%#specify a segment number to be executed from a multi-segment trajectory~%uint8 EXECUTE_TRAJ_NSEG = 101~%#for a path with discontinuities, command arm to go to first pose of segment nseg~%#specify the path segment in element \"nseg\"~%uint8 GOTO_NSEG_START = 102~%~%#uint8 ARM_DESCEND_20CM=101~%#uint8 ARM_DEPART_20CM=102~%~%~%#goal:~%int32 command_code~%geometry_msgs/PoseStamped des_pose_gripper~%float64[] arm_dp #to command a 3-D vector displacement relative to current pose, fixed orientation~%float64[] q_goal~%float64[] q_start~%int32 nsteps~%float64 arrival_time~%int32 nseg #to choose one of NSEG segments in a multi-traj vector~%#float64 time_scale_stretch_factor~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <arm_interfaceActionGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <arm_interfaceActionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'arm_interfaceActionGoal
    (cl:cons ':header (header msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':goal (goal msg))
))
