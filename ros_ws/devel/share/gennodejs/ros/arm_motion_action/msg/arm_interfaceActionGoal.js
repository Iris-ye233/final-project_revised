// Auto-generated. Do not edit!

// (in-package arm_motion_action.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let arm_interfaceGoal = require('./arm_interfaceGoal.js');
let actionlib_msgs = _finder('actionlib_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class arm_interfaceActionGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.goal_id = null;
      this.goal = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('goal_id')) {
        this.goal_id = initObj.goal_id
      }
      else {
        this.goal_id = new actionlib_msgs.msg.GoalID();
      }
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = new arm_interfaceGoal();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type arm_interfaceActionGoal
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [goal_id]
    bufferOffset = actionlib_msgs.msg.GoalID.serialize(obj.goal_id, buffer, bufferOffset);
    // Serialize message field [goal]
    bufferOffset = arm_interfaceGoal.serialize(obj.goal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type arm_interfaceActionGoal
    let len;
    let data = new arm_interfaceActionGoal(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal_id]
    data.goal_id = actionlib_msgs.msg.GoalID.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal]
    data.goal = arm_interfaceGoal.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += actionlib_msgs.msg.GoalID.getMessageSize(object.goal_id);
    length += arm_interfaceGoal.getMessageSize(object.goal);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'arm_motion_action/arm_interfaceActionGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9e97718a7ab375036bb56bb9356b4a91';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    Header header
    actionlib_msgs/GoalID goal_id
    arm_interfaceGoal goal
    
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
    MSG: arm_motion_action/arm_interfaceGoal
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #cartesian-move action interface
    #minimally, it may contain just a command code
    #more generally, it may contain desired tool-frame pose, as well
    # as gripper pose (gripper opening, or vacuum gripper on/off)
    # and an arrival time for the move
    # It is assumed that a move starts from the previous commanded pose, or from the current joint state
    
    #return codes provide status info, e.g. if a proposed move is reachable
    
    #define message constants:  
    uint8 ARM_TEST_MODE = 0
    
    #queries
    uint8 ARM_IS_SERVER_BUSY_QUERY = 1
    uint8 ARM_QUERY_IS_PATH_VALID = 2
    uint8 GET_TOOL_POSE = 5
    uint8 GET_Q_DATA = 7
    
    #requests for motion plans; 
    uint8 PLAN_JSPACE_TRAJ_CURRENT_TO_WAITING_POSE=20
    uint8 PLAN_JSPACE_TRAJ_CURRENT_TO_QGOAL = 21
    uint8 PLAN_JSPACE_TRAJ_CURRENT_TO_CART_TOOL_POSE = 22 #plan a joint-space path from current arm pose to some IK soln of Cartesian goal
    
    uint8 PLAN_CARTESIAN_TRAJ_CURRENT_TO_DES_TOOL_POSE = 23
    uint8 PLAN_CARTESIAN_TRAJ_QSTART_TO_DES_TOOL_POSE = 24
    uint8 PLAN_CARTESIAN_TRAJ_QPREV_TO_DES_TOOL_POSE = 25
    
    uint8 CLEAR_MULTI_TRAJ_PLAN = 26
    uint8 APPEND_MULTI_TRAJ_CART_SEGMENT = 27
    uint8 APPEND_MULTI_TRAJ_JSPACE_SEGMENT = 28
    uint8 TEST_PATH_FOR_DISCONTINUITIES = 29
    uint8 GET_NUM_PATH_SEGMENTS = 30
    uint8 GET_REPLANNED_ARRIVAL_TIMES = 31
    uint8 REPLAN_DISCONTINUITIES = 32
    
    uint8 REFINE_PLANNED_TRAJECTORY = 41 #if used approx IK soln, use this option to refine solns
    uint8 SEGMENT_DISCONTINUOUS_TRAJ = 42 #if soln is discontinuous, segment it into a multi-traj plan
    # return the number of new segments and their respective arrival times
    
    # request to preview plan:
    #uint8 DISPLAY_TRAJECTORY = 50
    
    #MOVE command!
    uint8 EXECUTE_PLANNED_TRAJ = 100
    #specify a segment number to be executed from a multi-segment trajectory
    uint8 EXECUTE_TRAJ_NSEG = 101
    #for a path with discontinuities, command arm to go to first pose of segment nseg
    #specify the path segment in element "nseg"
    uint8 GOTO_NSEG_START = 102
    
    #uint8 ARM_DESCEND_20CM=101
    #uint8 ARM_DEPART_20CM=102
    
    
    #goal:
    int32 command_code
    geometry_msgs/PoseStamped des_pose_gripper
    float64[] arm_dp #to command a 3-D vector displacement relative to current pose, fixed orientation
    float64[] q_goal
    float64[] q_start
    int32 nsteps
    float64 arrival_time
    int32 nseg #to choose one of NSEG segments in a multi-traj vector
    #float64 time_scale_stretch_factor
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new arm_interfaceActionGoal(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.goal_id !== undefined) {
      resolved.goal_id = actionlib_msgs.msg.GoalID.Resolve(msg.goal_id)
    }
    else {
      resolved.goal_id = new actionlib_msgs.msg.GoalID()
    }

    if (msg.goal !== undefined) {
      resolved.goal = arm_interfaceGoal.Resolve(msg.goal)
    }
    else {
      resolved.goal = new arm_interfaceGoal()
    }

    return resolved;
    }
};

module.exports = arm_interfaceActionGoal;
