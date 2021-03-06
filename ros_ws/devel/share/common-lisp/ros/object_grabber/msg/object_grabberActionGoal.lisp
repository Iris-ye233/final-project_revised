; Auto-generated. Do not edit!


(cl:in-package object_grabber-msg)


;//! \htmlinclude object_grabberActionGoal.msg.html

(cl:defclass <object_grabberActionGoal> (roslisp-msg-protocol:ros-message)
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
    :type object_grabber-msg:object_grabberGoal
    :initform (cl:make-instance 'object_grabber-msg:object_grabberGoal)))
)

(cl:defclass object_grabberActionGoal (<object_grabberActionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <object_grabberActionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'object_grabberActionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_grabber-msg:<object_grabberActionGoal> is deprecated: use object_grabber-msg:object_grabberActionGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <object_grabberActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_grabber-msg:header-val is deprecated.  Use object_grabber-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <object_grabberActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_grabber-msg:goal_id-val is deprecated.  Use object_grabber-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <object_grabberActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_grabber-msg:goal-val is deprecated.  Use object_grabber-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <object_grabberActionGoal>) ostream)
  "Serializes a message object of type '<object_grabberActionGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <object_grabberActionGoal>) istream)
  "Deserializes a message object of type '<object_grabberActionGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<object_grabberActionGoal>)))
  "Returns string type for a message object of type '<object_grabberActionGoal>"
  "object_grabber/object_grabberActionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'object_grabberActionGoal)))
  "Returns string type for a message object of type 'object_grabberActionGoal"
  "object_grabber/object_grabberActionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<object_grabberActionGoal>)))
  "Returns md5sum for a message object of type '<object_grabberActionGoal>"
  "3ed7e2451ccf211a58f8be3a15ef1aeb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'object_grabberActionGoal)))
  "Returns md5sum for a message object of type 'object_grabberActionGoal"
  "3ed7e2451ccf211a58f8be3a15ef1aeb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<object_grabberActionGoal>)))
  "Returns full string definition for message of type '<object_grabberActionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%object_grabberGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: object_grabber/object_grabberGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#object_grabber action message~%#pass in an object code and the object's frame (w/rt named frame_id)~%#object_grabber will plan approach, grasp and lift of object~%#returns codes regarding outcome~%~%# Action Codes~%~%# Pre-Grasp~%int32 TEST_CODE                         = 0     # \"ping\" action server~%int32 MOVE_TO_WAITING_POSE              = 1     # pre-pose motion: defined on param server out of way of sensors~%~%int32 PLAN_MOVE_TO_GRASP_POSE           = 2     # expects (1) current_object_pose, (2) object_ID, (3) grasp_option, (4) approach_option~%                                                # + send separate \"grasp\" command to gripper~%~%int32 PLAN_MOVE_FINE_TO_GRASP_POSE      = 3     # as above, but finer/slower motion ~%~%### Move Object~%int32 PLAN_MOVE_OBJECT_JSPACE           = 4     # move grasped object to dest in joint-space~%                                                # expects: (i) des_object_pose, (2) object_ID, (3) grasp_option~%~%int32 PLAN_MOVE_OBJECT_CSPACE           = 5     # move grasped object to dest in cart-space~%                                                # expects as above~%~%int32 PLAN_MOVE_FINE_OBJECT_CSPACE      = 6     # as above, but finer/slower motion~%~%### Post-Grasp~%int32 PLAN_WITHDRAW_FROM_OBJECT         = 7     # after grasp released, use strategy to depart object ~%                                                # (1) object_ID, (2) grasp_option, (3) depart_option~%~%int32 PLAN_WITHDRAW_FINE_FROM_OBJECT    = 8     # as above, but finer/slower motion~%~%### Combined actions ~%int32 PLAN_OBJECT_GRASP                 = 9     # combine multiple elements above to acquire an object~%~%int32 CART_MOVE_CURRENT_TO_CART_GOAL    = 10    # plan/execute move to cartesian goal specified in \"geometry_msgs/PoseStamped object_frame\"~%~%int32 GRAB_OBJECT                       = 101   # plan/execute object grasp & lift~%int32 DROPOFF_OBJECT                    = 102   # plan/execute object placement and arm withdrawal~%int32 STRADDLE_OBJECT                   = 103   # plan/execute part of GRAB_OBJECT: move to grasp pose, then halt~%~%int32 SET_SPEED_FACTOR = 10                     # arg: changes trajectory time-scale: > 1.0 ==> slower~%~%### Strategies:~%int32 DEFAULT_GRASP_STRATEGY            = 0     # executes approach and depart strategies. ~%~%int32 EXECUTE_PLANNED_MOVE = 100                # accept arm-motion plan and enable its execution~%~%### Gripper commands:~%int32 GRIPPER_PREPARE_GRASP_OBJECT      = 20    # Prepare for grasp approach (open fingers)~%~%int32 GRIPPER_GRASP_OBJECT              = 21    # Perform appropriate action to grasp object (assumes gripper in appropriate pose)~%                                                # Client does not need to know what type of gripper is used~%~%int32 GRIPPER_RELEASE_OBJECT            = 22    # Release a grasped object~%                                                # (1) obj ID, (2) Grasp option~%~%int32 GRIPPER_IS_OBJECT_GRASPED         = 23    # Query (ret bool)~%                                                # (1) object_ID, (2) grasp option, and/or (3)  grasp test parameters; ~%~%###                               ~%~%#goal:~%int32 action_code                               # See codes above (i.e. MOVE_TO_WAITING_POSE, GRAB_OBJECT, DROPOFF_OBJECT)~%int32 object_id~%int32 grasp_option~%~%# Strategies: approach, grasp, lift, withdraw~%int32 approach_strategy~%int32 lift_object_strategy~%int32 dropoff_strategy~%int32 dropoff_withdraw_strategy~%~%geometry_msgs/PoseStamped object_frame          # wrt system_ref_frame or tf to this frame available~%float64                   speed_factor          # default 1.0~%float64[]                 gripper_test_params~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'object_grabberActionGoal)))
  "Returns full string definition for message of type 'object_grabberActionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%object_grabberGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: object_grabber/object_grabberGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#object_grabber action message~%#pass in an object code and the object's frame (w/rt named frame_id)~%#object_grabber will plan approach, grasp and lift of object~%#returns codes regarding outcome~%~%# Action Codes~%~%# Pre-Grasp~%int32 TEST_CODE                         = 0     # \"ping\" action server~%int32 MOVE_TO_WAITING_POSE              = 1     # pre-pose motion: defined on param server out of way of sensors~%~%int32 PLAN_MOVE_TO_GRASP_POSE           = 2     # expects (1) current_object_pose, (2) object_ID, (3) grasp_option, (4) approach_option~%                                                # + send separate \"grasp\" command to gripper~%~%int32 PLAN_MOVE_FINE_TO_GRASP_POSE      = 3     # as above, but finer/slower motion ~%~%### Move Object~%int32 PLAN_MOVE_OBJECT_JSPACE           = 4     # move grasped object to dest in joint-space~%                                                # expects: (i) des_object_pose, (2) object_ID, (3) grasp_option~%~%int32 PLAN_MOVE_OBJECT_CSPACE           = 5     # move grasped object to dest in cart-space~%                                                # expects as above~%~%int32 PLAN_MOVE_FINE_OBJECT_CSPACE      = 6     # as above, but finer/slower motion~%~%### Post-Grasp~%int32 PLAN_WITHDRAW_FROM_OBJECT         = 7     # after grasp released, use strategy to depart object ~%                                                # (1) object_ID, (2) grasp_option, (3) depart_option~%~%int32 PLAN_WITHDRAW_FINE_FROM_OBJECT    = 8     # as above, but finer/slower motion~%~%### Combined actions ~%int32 PLAN_OBJECT_GRASP                 = 9     # combine multiple elements above to acquire an object~%~%int32 CART_MOVE_CURRENT_TO_CART_GOAL    = 10    # plan/execute move to cartesian goal specified in \"geometry_msgs/PoseStamped object_frame\"~%~%int32 GRAB_OBJECT                       = 101   # plan/execute object grasp & lift~%int32 DROPOFF_OBJECT                    = 102   # plan/execute object placement and arm withdrawal~%int32 STRADDLE_OBJECT                   = 103   # plan/execute part of GRAB_OBJECT: move to grasp pose, then halt~%~%int32 SET_SPEED_FACTOR = 10                     # arg: changes trajectory time-scale: > 1.0 ==> slower~%~%### Strategies:~%int32 DEFAULT_GRASP_STRATEGY            = 0     # executes approach and depart strategies. ~%~%int32 EXECUTE_PLANNED_MOVE = 100                # accept arm-motion plan and enable its execution~%~%### Gripper commands:~%int32 GRIPPER_PREPARE_GRASP_OBJECT      = 20    # Prepare for grasp approach (open fingers)~%~%int32 GRIPPER_GRASP_OBJECT              = 21    # Perform appropriate action to grasp object (assumes gripper in appropriate pose)~%                                                # Client does not need to know what type of gripper is used~%~%int32 GRIPPER_RELEASE_OBJECT            = 22    # Release a grasped object~%                                                # (1) obj ID, (2) Grasp option~%~%int32 GRIPPER_IS_OBJECT_GRASPED         = 23    # Query (ret bool)~%                                                # (1) object_ID, (2) grasp option, and/or (3)  grasp test parameters; ~%~%###                               ~%~%#goal:~%int32 action_code                               # See codes above (i.e. MOVE_TO_WAITING_POSE, GRAB_OBJECT, DROPOFF_OBJECT)~%int32 object_id~%int32 grasp_option~%~%# Strategies: approach, grasp, lift, withdraw~%int32 approach_strategy~%int32 lift_object_strategy~%int32 dropoff_strategy~%int32 dropoff_withdraw_strategy~%~%geometry_msgs/PoseStamped object_frame          # wrt system_ref_frame or tf to this frame available~%float64                   speed_factor          # default 1.0~%float64[]                 gripper_test_params~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <object_grabberActionGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <object_grabberActionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'object_grabberActionGoal
    (cl:cons ':header (header msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':goal (goal msg))
))
