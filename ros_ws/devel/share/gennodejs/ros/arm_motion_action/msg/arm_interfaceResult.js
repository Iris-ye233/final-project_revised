// Auto-generated. Do not edit!

// (in-package arm_motion_action.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class arm_interfaceResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.return_code = null;
      this.err_code = null;
      this.num_path_segs = null;
      this.segmented_path_arrival_times = null;
      this.err_msg = null;
      this.computed_arrival_time = null;
      this.q_arm = null;
      this.current_pose_gripper = null;
    }
    else {
      if (initObj.hasOwnProperty('return_code')) {
        this.return_code = initObj.return_code
      }
      else {
        this.return_code = 0;
      }
      if (initObj.hasOwnProperty('err_code')) {
        this.err_code = initObj.err_code
      }
      else {
        this.err_code = 0;
      }
      if (initObj.hasOwnProperty('num_path_segs')) {
        this.num_path_segs = initObj.num_path_segs
      }
      else {
        this.num_path_segs = 0;
      }
      if (initObj.hasOwnProperty('segmented_path_arrival_times')) {
        this.segmented_path_arrival_times = initObj.segmented_path_arrival_times
      }
      else {
        this.segmented_path_arrival_times = [];
      }
      if (initObj.hasOwnProperty('err_msg')) {
        this.err_msg = initObj.err_msg
      }
      else {
        this.err_msg = '';
      }
      if (initObj.hasOwnProperty('computed_arrival_time')) {
        this.computed_arrival_time = initObj.computed_arrival_time
      }
      else {
        this.computed_arrival_time = 0.0;
      }
      if (initObj.hasOwnProperty('q_arm')) {
        this.q_arm = initObj.q_arm
      }
      else {
        this.q_arm = [];
      }
      if (initObj.hasOwnProperty('current_pose_gripper')) {
        this.current_pose_gripper = initObj.current_pose_gripper
      }
      else {
        this.current_pose_gripper = new geometry_msgs.msg.PoseStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type arm_interfaceResult
    // Serialize message field [return_code]
    bufferOffset = _serializer.int32(obj.return_code, buffer, bufferOffset);
    // Serialize message field [err_code]
    bufferOffset = _serializer.int32(obj.err_code, buffer, bufferOffset);
    // Serialize message field [num_path_segs]
    bufferOffset = _serializer.int32(obj.num_path_segs, buffer, bufferOffset);
    // Serialize message field [segmented_path_arrival_times]
    bufferOffset = _arraySerializer.float64(obj.segmented_path_arrival_times, buffer, bufferOffset, null);
    // Serialize message field [err_msg]
    bufferOffset = _serializer.string(obj.err_msg, buffer, bufferOffset);
    // Serialize message field [computed_arrival_time]
    bufferOffset = _serializer.float64(obj.computed_arrival_time, buffer, bufferOffset);
    // Serialize message field [q_arm]
    bufferOffset = _arraySerializer.float64(obj.q_arm, buffer, bufferOffset, null);
    // Serialize message field [current_pose_gripper]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.current_pose_gripper, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type arm_interfaceResult
    let len;
    let data = new arm_interfaceResult(null);
    // Deserialize message field [return_code]
    data.return_code = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [err_code]
    data.err_code = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [num_path_segs]
    data.num_path_segs = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [segmented_path_arrival_times]
    data.segmented_path_arrival_times = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [err_msg]
    data.err_msg = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [computed_arrival_time]
    data.computed_arrival_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [q_arm]
    data.q_arm = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [current_pose_gripper]
    data.current_pose_gripper = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.segmented_path_arrival_times.length;
    length += _getByteLength(object.err_msg);
    length += 8 * object.q_arm.length;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.current_pose_gripper);
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'arm_motion_action/arm_interfaceResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e40b7949a686d121b85df18d92974567';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #result definition
    #  response codes...
    uint8 SUCCESS=0
    
    uint8 ARM_RECEIVED_AND_INITIATED_RQST=1
    uint8 ARM_REQUEST_REJECTED_ALREADY_BUSY=2
    uint8 ARM_SERVER_NOT_BUSY=3
    uint8 ARM_SERVER_IS_BUSY=4
    uint8 ARM_RECEIVED_AND_COMPLETED_RQST=5
    uint8 PATH_IS_VALID=6
    uint8 PATH_NOT_VALID=7
    
    
    uint8 COMMAND_CODE_NOT_RECOGNIZED=8
    uint8 ARM_STATUS_UNDEFINED=9
    uint8 NOT_FINISHED_BEFORE_TIMEOUT=10
    
    uint8 PATH_HAS_DISCONTINUITIES=11
    
    #return code of PATH_HAS_DISCONTINUITIES requires further processing
    int32 return_code
    int32 err_code
    #if motion would require discontinuities, e.g. wrist flip, specify here the
    #number of smooth path segments.  E.g., one wrist flip--> 2 path segments
    int32 num_path_segs
    float64[] segmented_path_arrival_times
    string err_msg
    float64 computed_arrival_time
    float64[] q_arm
    geometry_msgs/PoseStamped current_pose_gripper
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    const resolved = new arm_interfaceResult(null);
    if (msg.return_code !== undefined) {
      resolved.return_code = msg.return_code;
    }
    else {
      resolved.return_code = 0
    }

    if (msg.err_code !== undefined) {
      resolved.err_code = msg.err_code;
    }
    else {
      resolved.err_code = 0
    }

    if (msg.num_path_segs !== undefined) {
      resolved.num_path_segs = msg.num_path_segs;
    }
    else {
      resolved.num_path_segs = 0
    }

    if (msg.segmented_path_arrival_times !== undefined) {
      resolved.segmented_path_arrival_times = msg.segmented_path_arrival_times;
    }
    else {
      resolved.segmented_path_arrival_times = []
    }

    if (msg.err_msg !== undefined) {
      resolved.err_msg = msg.err_msg;
    }
    else {
      resolved.err_msg = ''
    }

    if (msg.computed_arrival_time !== undefined) {
      resolved.computed_arrival_time = msg.computed_arrival_time;
    }
    else {
      resolved.computed_arrival_time = 0.0
    }

    if (msg.q_arm !== undefined) {
      resolved.q_arm = msg.q_arm;
    }
    else {
      resolved.q_arm = []
    }

    if (msg.current_pose_gripper !== undefined) {
      resolved.current_pose_gripper = geometry_msgs.msg.PoseStamped.Resolve(msg.current_pose_gripper)
    }
    else {
      resolved.current_pose_gripper = new geometry_msgs.msg.PoseStamped()
    }

    return resolved;
    }
};

// Constants for message
arm_interfaceResult.Constants = {
  SUCCESS: 0,
  ARM_RECEIVED_AND_INITIATED_RQST: 1,
  ARM_REQUEST_REJECTED_ALREADY_BUSY: 2,
  ARM_SERVER_NOT_BUSY: 3,
  ARM_SERVER_IS_BUSY: 4,
  ARM_RECEIVED_AND_COMPLETED_RQST: 5,
  PATH_IS_VALID: 6,
  PATH_NOT_VALID: 7,
  COMMAND_CODE_NOT_RECOGNIZED: 8,
  ARM_STATUS_UNDEFINED: 9,
  NOT_FINISHED_BEFORE_TIMEOUT: 10,
  PATH_HAS_DISCONTINUITIES: 11,
}

module.exports = arm_interfaceResult;
