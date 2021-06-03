; Auto-generated. Do not edit!


(cl:in-package object_grabber-msg)


;//! \htmlinclude object_grabberAction.msg.html

(cl:defclass <object_grabberAction> (roslisp-msg-protocol:ros-message)
  ((action_goal
    :reader action_goal
    :initarg :action_goal
    :type object_grabber-msg:object_grabberActionGoal
    :initform (cl:make-instance 'object_grabber-msg:object_grabberActionGoal))
   (action_result
    :reader action_result
    :initarg :action_result
    :type object_grabber-msg:object_grabberActionResult
    :initform (cl:make-instance 'object_grabber-msg:object_grabberActionResult))
   (action_feedback
    :reader action_feedback
    :initarg :action_feedback
    :type object_grabber-msg:object_grabberActionFeedback
    :initform (cl:make-instance 'object_grabber-msg:object_grabberActionFeedback)))
)

(cl:defclass object_grabberAction (<object_grabberAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <object_grabberAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'object_grabberAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_grabber-msg:<object_grabberAction> is deprecated: use object_grabber-msg:object_grabberAction instead.")))

(cl:ensure-generic-function 'action_goal-val :lambda-list '(m))
(cl:defmethod action_goal-val ((m <object_grabberAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_grabber-msg:action_goal-val is deprecated.  Use object_grabber-msg:action_goal instead.")
  (action_goal m))

(cl:ensure-generic-function 'action_result-val :lambda-list '(m))
(cl:defmethod action_result-val ((m <object_grabberAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_grabber-msg:action_result-val is deprecated.  Use object_grabber-msg:action_result instead.")
  (action_result m))

(cl:ensure-generic-function 'action_feedback-val :lambda-list '(m))
(cl:defmethod action_feedback-val ((m <object_grabberAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_grabber-msg:action_feedback-val is deprecated.  Use object_grabber-msg:action_feedback instead.")
  (action_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <object_grabberAction>) ostream)
  "Serializes a message object of type '<object_grabberAction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <object_grabberAction>) istream)
  "Deserializes a message object of type '<object_grabberAction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<object_grabberAction>)))
  "Returns string type for a message object of type '<object_grabberAction>"
  "object_grabber/object_grabberAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'object_grabberAction)))
  "Returns string type for a message object of type 'object_grabberAction"
  "object_grabber/object_grabberAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<object_grabberAction>)))
  "Returns md5sum for a message object of type '<object_grabberAction>"
  "2a073889befbf1fc30d55b75c12a8c4c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'object_grabberAction)))
  "Returns md5sum for a message object of type 'object_grabberAction"
  "2a073889befbf1fc30d55b75c12a8c4c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<object_grabberAction>)))
  "Returns full string definition for message of type '<object_grabberAction>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%object_grabberActionGoal action_goal~%object_grabberActionResult action_result~%object_grabberActionFeedback action_feedback~%~%================================================================================~%MSG: object_grabber/object_grabberActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%object_grabberGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: object_grabber/object_grabberGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#object_grabber action message~%#pass in an object code and the object's frame (w/rt named frame_id)~%#object_grabber will plan approach, grasp and lift of object~%#returns codes regarding outcome~%~%# Action Codes~%~%# Pre-Grasp~%int32 TEST_CODE                         = 0     # \"ping\" action server~%int32 MOVE_TO_WAITING_POSE              = 1     # pre-pose motion: defined on param server out of way of sensors~%~%int32 PLAN_MOVE_TO_GRASP_POSE           = 2     # expects (1) current_object_pose, (2) object_ID, (3) grasp_option, (4) approach_option~%                                                # + send separate \"grasp\" command to gripper~%~%int32 PLAN_MOVE_FINE_TO_GRASP_POSE      = 3     # as above, but finer/slower motion ~%~%### Move Object~%int32 PLAN_MOVE_OBJECT_JSPACE           = 4     # move grasped object to dest in joint-space~%                                                # expects: (i) des_object_pose, (2) object_ID, (3) grasp_option~%~%int32 PLAN_MOVE_OBJECT_CSPACE           = 5     # move grasped object to dest in cart-space~%                                                # expects as above~%~%int32 PLAN_MOVE_FINE_OBJECT_CSPACE      = 6     # as above, but finer/slower motion~%~%### Post-Grasp~%int32 PLAN_WITHDRAW_FROM_OBJECT         = 7     # after grasp released, use strategy to depart object ~%                                                # (1) object_ID, (2) grasp_option, (3) depart_option~%~%int32 PLAN_WITHDRAW_FINE_FROM_OBJECT    = 8     # as above, but finer/slower motion~%~%### Combined actions ~%int32 PLAN_OBJECT_GRASP                 = 9     # combine multiple elements above to acquire an object~%~%int32 CART_MOVE_CURRENT_TO_CART_GOAL    = 10    # plan/execute move to cartesian goal specified in \"geometry_msgs/PoseStamped object_frame\"~%~%int32 GRAB_OBJECT                       = 101   # plan/execute object grasp & lift~%int32 DROPOFF_OBJECT                    = 102   # plan/execute object placement and arm withdrawal~%int32 STRADDLE_OBJECT                   = 103   # plan/execute part of GRAB_OBJECT: move to grasp pose, then halt~%~%int32 SET_SPEED_FACTOR = 10                     # arg: changes trajectory time-scale: > 1.0 ==> slower~%~%### Strategies:~%int32 DEFAULT_GRASP_STRATEGY            = 0     # executes approach and depart strategies. ~%~%int32 EXECUTE_PLANNED_MOVE = 100                # accept arm-motion plan and enable its execution~%~%### Gripper commands:~%int32 GRIPPER_PREPARE_GRASP_OBJECT      = 20    # Prepare for grasp approach (open fingers)~%~%int32 GRIPPER_GRASP_OBJECT              = 21    # Perform appropriate action to grasp object (assumes gripper in appropriate pose)~%                                                # Client does not need to know what type of gripper is used~%~%int32 GRIPPER_RELEASE_OBJECT            = 22    # Release a grasped object~%                                                # (1) obj ID, (2) Grasp option~%~%int32 GRIPPER_IS_OBJECT_GRASPED         = 23    # Query (ret bool)~%                                                # (1) object_ID, (2) grasp option, and/or (3)  grasp test parameters; ~%~%###                               ~%~%#goal:~%int32 action_code                               # See codes above (i.e. MOVE_TO_WAITING_POSE, GRAB_OBJECT, DROPOFF_OBJECT)~%int32 object_id~%int32 grasp_option~%~%# Strategies: approach, grasp, lift, withdraw~%int32 approach_strategy~%int32 lift_object_strategy~%int32 dropoff_strategy~%int32 dropoff_withdraw_strategy~%~%geometry_msgs/PoseStamped object_frame          # wrt system_ref_frame or tf to this frame available~%float64                   speed_factor          # default 1.0~%float64[]                 gripper_test_params~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: object_grabber/object_grabberActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%object_grabberResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: object_grabber/object_grabberResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%#result definitions: response codes~%~%int32 SUCCESS                               = 0~%int32 OBJECT_ACQUIRED                       = 0~%~%int32 FAILED_CANNOT_REACH                   = 1~%int32 FAILED_CANNOT_APPROACH                = 2~%int32 FAILED_CANNOT_REACH_GRASP_POSE        = 3~%int32 FAILED_CANNOT_REACH_DEPART_POSE       = 4~%int32 FAILED_OBJECT_NOT_IN_GRIPPER          = 5~%int32 FAILED_OBJECT_UNKNOWN                 = 6~%~%int32 OBJECT_GRABBER_BUSY                   = 7~%int32 OBJECT_GRABBER_CANCELLED              = 8~%~%int32 FAILED_CANNOT_REACH_DESIRED_POSE      = 9~%int32 FAILED_CANNOT_MOVE_CARTESIAN_FINE     = 13~%int32 FAILED_CANNOT_MOVE_TO_PRE_POSE        = 14~%~%int32 ACTION_CODE_UNKNOWN                   = 15~%~%int32 GRIPPER_IS_OPEN                       = 16~%int32 GRIPPER_IS_CLOSED                     = 17~%int32 GRIPPER_FAILURE                       = 18~%int32 PENDING                               = 19~%int32 OBJECT_DROPPED_OFF                    = 20~%int32 NO_KNOWN_GRASP_OPTIONS_THIS_GRIPPER_AND_OBJECT = 21~%~%int32 return_code~%float64 computed_move_time~%#geometry_msgs/PoseStamped des_flange_pose_stamped_wrt_torso~%~%~%================================================================================~%MSG: object_grabber/object_grabberActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%object_grabberFeedback feedback~%~%================================================================================~%MSG: object_grabber/object_grabberFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%#feedback: optional; ~%~%int32 fdbk~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'object_grabberAction)))
  "Returns full string definition for message of type 'object_grabberAction"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%object_grabberActionGoal action_goal~%object_grabberActionResult action_result~%object_grabberActionFeedback action_feedback~%~%================================================================================~%MSG: object_grabber/object_grabberActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%object_grabberGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: object_grabber/object_grabberGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#object_grabber action message~%#pass in an object code and the object's frame (w/rt named frame_id)~%#object_grabber will plan approach, grasp and lift of object~%#returns codes regarding outcome~%~%# Action Codes~%~%# Pre-Grasp~%int32 TEST_CODE                         = 0     # \"ping\" action server~%int32 MOVE_TO_WAITING_POSE              = 1     # pre-pose motion: defined on param server out of way of sensors~%~%int32 PLAN_MOVE_TO_GRASP_POSE           = 2     # expects (1) current_object_pose, (2) object_ID, (3) grasp_option, (4) approach_option~%                                                # + send separate \"grasp\" command to gripper~%~%int32 PLAN_MOVE_FINE_TO_GRASP_POSE      = 3     # as above, but finer/slower motion ~%~%### Move Object~%int32 PLAN_MOVE_OBJECT_JSPACE           = 4     # move grasped object to dest in joint-space~%                                                # expects: (i) des_object_pose, (2) object_ID, (3) grasp_option~%~%int32 PLAN_MOVE_OBJECT_CSPACE           = 5     # move grasped object to dest in cart-space~%                                                # expects as above~%~%int32 PLAN_MOVE_FINE_OBJECT_CSPACE      = 6     # as above, but finer/slower motion~%~%### Post-Grasp~%int32 PLAN_WITHDRAW_FROM_OBJECT         = 7     # after grasp released, use strategy to depart object ~%                                                # (1) object_ID, (2) grasp_option, (3) depart_option~%~%int32 PLAN_WITHDRAW_FINE_FROM_OBJECT    = 8     # as above, but finer/slower motion~%~%### Combined actions ~%int32 PLAN_OBJECT_GRASP                 = 9     # combine multiple elements above to acquire an object~%~%int32 CART_MOVE_CURRENT_TO_CART_GOAL    = 10    # plan/execute move to cartesian goal specified in \"geometry_msgs/PoseStamped object_frame\"~%~%int32 GRAB_OBJECT                       = 101   # plan/execute object grasp & lift~%int32 DROPOFF_OBJECT                    = 102   # plan/execute object placement and arm withdrawal~%int32 STRADDLE_OBJECT                   = 103   # plan/execute part of GRAB_OBJECT: move to grasp pose, then halt~%~%int32 SET_SPEED_FACTOR = 10                     # arg: changes trajectory time-scale: > 1.0 ==> slower~%~%### Strategies:~%int32 DEFAULT_GRASP_STRATEGY            = 0     # executes approach and depart strategies. ~%~%int32 EXECUTE_PLANNED_MOVE = 100                # accept arm-motion plan and enable its execution~%~%### Gripper commands:~%int32 GRIPPER_PREPARE_GRASP_OBJECT      = 20    # Prepare for grasp approach (open fingers)~%~%int32 GRIPPER_GRASP_OBJECT              = 21    # Perform appropriate action to grasp object (assumes gripper in appropriate pose)~%                                                # Client does not need to know what type of gripper is used~%~%int32 GRIPPER_RELEASE_OBJECT            = 22    # Release a grasped object~%                                                # (1) obj ID, (2) Grasp option~%~%int32 GRIPPER_IS_OBJECT_GRASPED         = 23    # Query (ret bool)~%                                                # (1) object_ID, (2) grasp option, and/or (3)  grasp test parameters; ~%~%###                               ~%~%#goal:~%int32 action_code                               # See codes above (i.e. MOVE_TO_WAITING_POSE, GRAB_OBJECT, DROPOFF_OBJECT)~%int32 object_id~%int32 grasp_option~%~%# Strategies: approach, grasp, lift, withdraw~%int32 approach_strategy~%int32 lift_object_strategy~%int32 dropoff_strategy~%int32 dropoff_withdraw_strategy~%~%geometry_msgs/PoseStamped object_frame          # wrt system_ref_frame or tf to this frame available~%float64                   speed_factor          # default 1.0~%float64[]                 gripper_test_params~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: object_grabber/object_grabberActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%object_grabberResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: object_grabber/object_grabberResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%#result definitions: response codes~%~%int32 SUCCESS                               = 0~%int32 OBJECT_ACQUIRED                       = 0~%~%int32 FAILED_CANNOT_REACH                   = 1~%int32 FAILED_CANNOT_APPROACH                = 2~%int32 FAILED_CANNOT_REACH_GRASP_POSE        = 3~%int32 FAILED_CANNOT_REACH_DEPART_POSE       = 4~%int32 FAILED_OBJECT_NOT_IN_GRIPPER          = 5~%int32 FAILED_OBJECT_UNKNOWN                 = 6~%~%int32 OBJECT_GRABBER_BUSY                   = 7~%int32 OBJECT_GRABBER_CANCELLED              = 8~%~%int32 FAILED_CANNOT_REACH_DESIRED_POSE      = 9~%int32 FAILED_CANNOT_MOVE_CARTESIAN_FINE     = 13~%int32 FAILED_CANNOT_MOVE_TO_PRE_POSE        = 14~%~%int32 ACTION_CODE_UNKNOWN                   = 15~%~%int32 GRIPPER_IS_OPEN                       = 16~%int32 GRIPPER_IS_CLOSED                     = 17~%int32 GRIPPER_FAILURE                       = 18~%int32 PENDING                               = 19~%int32 OBJECT_DROPPED_OFF                    = 20~%int32 NO_KNOWN_GRASP_OPTIONS_THIS_GRIPPER_AND_OBJECT = 21~%~%int32 return_code~%float64 computed_move_time~%#geometry_msgs/PoseStamped des_flange_pose_stamped_wrt_torso~%~%~%================================================================================~%MSG: object_grabber/object_grabberActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%object_grabberFeedback feedback~%~%================================================================================~%MSG: object_grabber/object_grabberFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%#feedback: optional; ~%~%int32 fdbk~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <object_grabberAction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <object_grabberAction>))
  "Converts a ROS message object to a list"
  (cl:list 'object_grabberAction
    (cl:cons ':action_goal (action_goal msg))
    (cl:cons ':action_result (action_result msg))
    (cl:cons ':action_feedback (action_feedback msg))
))
