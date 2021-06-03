; Auto-generated. Do not edit!


(cl:in-package cartesian_planner-msg)


;//! \htmlinclude cart_moveAction.msg.html

(cl:defclass <cart_moveAction> (roslisp-msg-protocol:ros-message)
  ((action_goal
    :reader action_goal
    :initarg :action_goal
    :type cartesian_planner-msg:cart_moveActionGoal
    :initform (cl:make-instance 'cartesian_planner-msg:cart_moveActionGoal))
   (action_result
    :reader action_result
    :initarg :action_result
    :type cartesian_planner-msg:cart_moveActionResult
    :initform (cl:make-instance 'cartesian_planner-msg:cart_moveActionResult))
   (action_feedback
    :reader action_feedback
    :initarg :action_feedback
    :type cartesian_planner-msg:cart_moveActionFeedback
    :initform (cl:make-instance 'cartesian_planner-msg:cart_moveActionFeedback)))
)

(cl:defclass cart_moveAction (<cart_moveAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cart_moveAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cart_moveAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartesian_planner-msg:<cart_moveAction> is deprecated: use cartesian_planner-msg:cart_moveAction instead.")))

(cl:ensure-generic-function 'action_goal-val :lambda-list '(m))
(cl:defmethod action_goal-val ((m <cart_moveAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_planner-msg:action_goal-val is deprecated.  Use cartesian_planner-msg:action_goal instead.")
  (action_goal m))

(cl:ensure-generic-function 'action_result-val :lambda-list '(m))
(cl:defmethod action_result-val ((m <cart_moveAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_planner-msg:action_result-val is deprecated.  Use cartesian_planner-msg:action_result instead.")
  (action_result m))

(cl:ensure-generic-function 'action_feedback-val :lambda-list '(m))
(cl:defmethod action_feedback-val ((m <cart_moveAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_planner-msg:action_feedback-val is deprecated.  Use cartesian_planner-msg:action_feedback instead.")
  (action_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cart_moveAction>) ostream)
  "Serializes a message object of type '<cart_moveAction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cart_moveAction>) istream)
  "Deserializes a message object of type '<cart_moveAction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cart_moveAction>)))
  "Returns string type for a message object of type '<cart_moveAction>"
  "cartesian_planner/cart_moveAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cart_moveAction)))
  "Returns string type for a message object of type 'cart_moveAction"
  "cartesian_planner/cart_moveAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cart_moveAction>)))
  "Returns md5sum for a message object of type '<cart_moveAction>"
  "9c8a48c074fa5afc7042cb88b5c17d83")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cart_moveAction)))
  "Returns md5sum for a message object of type 'cart_moveAction"
  "9c8a48c074fa5afc7042cb88b5c17d83")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cart_moveAction>)))
  "Returns full string definition for message of type '<cart_moveAction>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%cart_moveActionGoal action_goal~%cart_moveActionResult action_result~%cart_moveActionFeedback action_feedback~%~%================================================================================~%MSG: cartesian_planner/cart_moveActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%cart_moveGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: cartesian_planner/cart_moveGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# cartesian-move action interface~%~%# minimally, it may contain just a command code~%# more generally, it may contain desired tool-frame pose, as well~%# as gripper pose (gripper opening, or vacuum gripper on/off)~%# and an arrival time for the move~%# It is assumed that a move starts from the previous commanded pose, or from the current joint state~%~%#return codes provide status info, e.g. if a proposed move is reachable~%~%# COMMAND CODES: ~%uint8 ARM_TEST_MODE = 0~%~%# Queries~%uint8 ARM_IS_SERVER_BUSY_QUERY                      = 1~%uint8 ARM_QUERY_IS_PATH_VALID                       = 2~%uint8 GET_TOOL_POSE                                 = 5~%uint8 GET_Q_DATA                                    = 7~%~%# Motion plan requests ~%#uint8 PLAN_PATH_CURRENT_TO_PRE_POSE=20 #synonym~%~%uint8 PLAN_PATH_CURRENT_TO_WAITING_POSE             = 20~%uint8 PLAN_JSPACE_PATH_CURRENT_TO_CART_GRIPPER_POSE = 21    # Joint path plan from current pose to some goal IK soln~%~%uint8 PLAN_PATH_CURRENT_TO_GOAL_GRIPPER_POSE        = 22    # Cartesian path plan from current pose to goal gripper pose~%uint8 PLAN_FINE_PATH_CURRENT_TO_GOAL_GRIPPER_POSE   = 23    # as above but high-res~%~%uint8 PLAN_PATH_CURRENT_TO_GOAL_DP_XYZ              = 24    # Rectilinear translation w/ fixed orientation~%uint8 PLAN_JSPACE_PATH_CURRENT_TO_QGOAL             = 25~%~%uint8 TIME_RESCALE_PLANNED_TRAJECTORY               = 40    # Speed/Slow arm w/ provided time-stretch factor~%uint8 REFINE_PLANNED_TRAJECTORY                     = 41    # If used approx IK soln, use this option to refine solns~%uint8 SET_ARRIVAL_TIME_PLANNED_TRAJECTORY           = 42    # Set desired arrival time; put arrival time value in goal time_scale_stretch_factor~%~%# request to preview plan:~%#uint8 DISPLAY_TRAJECTORY                           = 50~%~%#MOVE command!~%uint8 EXECUTE_PLANNED_PATH                          = 100~%~%#uint8 ARM_DESCEND_20CM=101~%#uint8 ARM_DEPART_20CM=102~%~%~%#goal:~%int32                       command_code~%float64                     time_scale_stretch_factor~%float64[]                   arm_dp                      # 3D relative displacement vec to current pose, fixed orientation~%float64[]                   q_goal~%geometry_msgs/PoseStamped   des_pose_gripper~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: cartesian_planner/cart_moveActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%cart_moveResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: cartesian_planner/cart_moveResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%# Result Def~%# Response codes~%uint8 SUCCESS                           = 0~%~%uint8 ARM_RECEIVED_AND_INITIATED_RQST   = 1~%uint8 ARM_RECEIVED_AND_COMPLETED_RQST   = 5~%uint8 ARM_REQUEST_REJECTED_ALREADY_BUSY = 2~%~%uint8 ARM_SERVER_NOT_BUSY               = 3~%uint8 ARM_SERVER_IS_BUSY                = 4~%~%uint8 PATH_IS_VALID                     = 6~%uint8 PATH_NOT_VALID                    = 7~%~%uint8 COMMAND_CODE_NOT_RECOGNIZED       = 8~%uint8 ARM_STATUS_UNDEFINED              = 9~%uint8 NOT_FINISHED_BEFORE_TIMEOUT       = 10~%~%int32       return_code~%int32       err_code~%string      err_msg~%float64     computed_arrival_time~%float64[]   q_arm~%geometry_msgs/PoseStamped current_pose_gripper~%#geometry_msgs/PoseStamped current_pose_flange~%~%~%================================================================================~%MSG: cartesian_planner/cart_moveActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%cart_moveFeedback feedback~%~%================================================================================~%MSG: cartesian_planner/cart_moveFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%#feedback: optional; ~%int32 fdbk~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cart_moveAction)))
  "Returns full string definition for message of type 'cart_moveAction"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%cart_moveActionGoal action_goal~%cart_moveActionResult action_result~%cart_moveActionFeedback action_feedback~%~%================================================================================~%MSG: cartesian_planner/cart_moveActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%cart_moveGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: cartesian_planner/cart_moveGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# cartesian-move action interface~%~%# minimally, it may contain just a command code~%# more generally, it may contain desired tool-frame pose, as well~%# as gripper pose (gripper opening, or vacuum gripper on/off)~%# and an arrival time for the move~%# It is assumed that a move starts from the previous commanded pose, or from the current joint state~%~%#return codes provide status info, e.g. if a proposed move is reachable~%~%# COMMAND CODES: ~%uint8 ARM_TEST_MODE = 0~%~%# Queries~%uint8 ARM_IS_SERVER_BUSY_QUERY                      = 1~%uint8 ARM_QUERY_IS_PATH_VALID                       = 2~%uint8 GET_TOOL_POSE                                 = 5~%uint8 GET_Q_DATA                                    = 7~%~%# Motion plan requests ~%#uint8 PLAN_PATH_CURRENT_TO_PRE_POSE=20 #synonym~%~%uint8 PLAN_PATH_CURRENT_TO_WAITING_POSE             = 20~%uint8 PLAN_JSPACE_PATH_CURRENT_TO_CART_GRIPPER_POSE = 21    # Joint path plan from current pose to some goal IK soln~%~%uint8 PLAN_PATH_CURRENT_TO_GOAL_GRIPPER_POSE        = 22    # Cartesian path plan from current pose to goal gripper pose~%uint8 PLAN_FINE_PATH_CURRENT_TO_GOAL_GRIPPER_POSE   = 23    # as above but high-res~%~%uint8 PLAN_PATH_CURRENT_TO_GOAL_DP_XYZ              = 24    # Rectilinear translation w/ fixed orientation~%uint8 PLAN_JSPACE_PATH_CURRENT_TO_QGOAL             = 25~%~%uint8 TIME_RESCALE_PLANNED_TRAJECTORY               = 40    # Speed/Slow arm w/ provided time-stretch factor~%uint8 REFINE_PLANNED_TRAJECTORY                     = 41    # If used approx IK soln, use this option to refine solns~%uint8 SET_ARRIVAL_TIME_PLANNED_TRAJECTORY           = 42    # Set desired arrival time; put arrival time value in goal time_scale_stretch_factor~%~%# request to preview plan:~%#uint8 DISPLAY_TRAJECTORY                           = 50~%~%#MOVE command!~%uint8 EXECUTE_PLANNED_PATH                          = 100~%~%#uint8 ARM_DESCEND_20CM=101~%#uint8 ARM_DEPART_20CM=102~%~%~%#goal:~%int32                       command_code~%float64                     time_scale_stretch_factor~%float64[]                   arm_dp                      # 3D relative displacement vec to current pose, fixed orientation~%float64[]                   q_goal~%geometry_msgs/PoseStamped   des_pose_gripper~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: cartesian_planner/cart_moveActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%cart_moveResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: cartesian_planner/cart_moveResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%# Result Def~%# Response codes~%uint8 SUCCESS                           = 0~%~%uint8 ARM_RECEIVED_AND_INITIATED_RQST   = 1~%uint8 ARM_RECEIVED_AND_COMPLETED_RQST   = 5~%uint8 ARM_REQUEST_REJECTED_ALREADY_BUSY = 2~%~%uint8 ARM_SERVER_NOT_BUSY               = 3~%uint8 ARM_SERVER_IS_BUSY                = 4~%~%uint8 PATH_IS_VALID                     = 6~%uint8 PATH_NOT_VALID                    = 7~%~%uint8 COMMAND_CODE_NOT_RECOGNIZED       = 8~%uint8 ARM_STATUS_UNDEFINED              = 9~%uint8 NOT_FINISHED_BEFORE_TIMEOUT       = 10~%~%int32       return_code~%int32       err_code~%string      err_msg~%float64     computed_arrival_time~%float64[]   q_arm~%geometry_msgs/PoseStamped current_pose_gripper~%#geometry_msgs/PoseStamped current_pose_flange~%~%~%================================================================================~%MSG: cartesian_planner/cart_moveActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%cart_moveFeedback feedback~%~%================================================================================~%MSG: cartesian_planner/cart_moveFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%#feedback: optional; ~%int32 fdbk~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cart_moveAction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cart_moveAction>))
  "Converts a ROS message object to a list"
  (cl:list 'cart_moveAction
    (cl:cons ':action_goal (action_goal msg))
    (cl:cons ':action_result (action_result msg))
    (cl:cons ':action_feedback (action_feedback msg))
))
