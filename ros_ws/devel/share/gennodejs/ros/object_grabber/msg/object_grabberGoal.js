// Auto-generated. Do not edit!

// (in-package object_grabber.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class object_grabberGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action_code = null;
      this.object_id = null;
      this.grasp_option = null;
      this.approach_strategy = null;
      this.lift_object_strategy = null;
      this.dropoff_strategy = null;
      this.dropoff_withdraw_strategy = null;
      this.object_frame = null;
      this.speed_factor = null;
      this.gripper_test_params = null;
    }
    else {
      if (initObj.hasOwnProperty('action_code')) {
        this.action_code = initObj.action_code
      }
      else {
        this.action_code = 0;
      }
      if (initObj.hasOwnProperty('object_id')) {
        this.object_id = initObj.object_id
      }
      else {
        this.object_id = 0;
      }
      if (initObj.hasOwnProperty('grasp_option')) {
        this.grasp_option = initObj.grasp_option
      }
      else {
        this.grasp_option = 0;
      }
      if (initObj.hasOwnProperty('approach_strategy')) {
        this.approach_strategy = initObj.approach_strategy
      }
      else {
        this.approach_strategy = 0;
      }
      if (initObj.hasOwnProperty('lift_object_strategy')) {
        this.lift_object_strategy = initObj.lift_object_strategy
      }
      else {
        this.lift_object_strategy = 0;
      }
      if (initObj.hasOwnProperty('dropoff_strategy')) {
        this.dropoff_strategy = initObj.dropoff_strategy
      }
      else {
        this.dropoff_strategy = 0;
      }
      if (initObj.hasOwnProperty('dropoff_withdraw_strategy')) {
        this.dropoff_withdraw_strategy = initObj.dropoff_withdraw_strategy
      }
      else {
        this.dropoff_withdraw_strategy = 0;
      }
      if (initObj.hasOwnProperty('object_frame')) {
        this.object_frame = initObj.object_frame
      }
      else {
        this.object_frame = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('speed_factor')) {
        this.speed_factor = initObj.speed_factor
      }
      else {
        this.speed_factor = 0.0;
      }
      if (initObj.hasOwnProperty('gripper_test_params')) {
        this.gripper_test_params = initObj.gripper_test_params
      }
      else {
        this.gripper_test_params = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type object_grabberGoal
    // Serialize message field [action_code]
    bufferOffset = _serializer.int32(obj.action_code, buffer, bufferOffset);
    // Serialize message field [object_id]
    bufferOffset = _serializer.int32(obj.object_id, buffer, bufferOffset);
    // Serialize message field [grasp_option]
    bufferOffset = _serializer.int32(obj.grasp_option, buffer, bufferOffset);
    // Serialize message field [approach_strategy]
    bufferOffset = _serializer.int32(obj.approach_strategy, buffer, bufferOffset);
    // Serialize message field [lift_object_strategy]
    bufferOffset = _serializer.int32(obj.lift_object_strategy, buffer, bufferOffset);
    // Serialize message field [dropoff_strategy]
    bufferOffset = _serializer.int32(obj.dropoff_strategy, buffer, bufferOffset);
    // Serialize message field [dropoff_withdraw_strategy]
    bufferOffset = _serializer.int32(obj.dropoff_withdraw_strategy, buffer, bufferOffset);
    // Serialize message field [object_frame]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.object_frame, buffer, bufferOffset);
    // Serialize message field [speed_factor]
    bufferOffset = _serializer.float64(obj.speed_factor, buffer, bufferOffset);
    // Serialize message field [gripper_test_params]
    bufferOffset = _arraySerializer.float64(obj.gripper_test_params, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type object_grabberGoal
    let len;
    let data = new object_grabberGoal(null);
    // Deserialize message field [action_code]
    data.action_code = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [object_id]
    data.object_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [grasp_option]
    data.grasp_option = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [approach_strategy]
    data.approach_strategy = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lift_object_strategy]
    data.lift_object_strategy = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [dropoff_strategy]
    data.dropoff_strategy = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [dropoff_withdraw_strategy]
    data.dropoff_withdraw_strategy = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [object_frame]
    data.object_frame = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [speed_factor]
    data.speed_factor = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gripper_test_params]
    data.gripper_test_params = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.object_frame);
    length += 8 * object.gripper_test_params.length;
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'object_grabber/object_grabberGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'be483bfd87df74289719d347ad9709f1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #object_grabber action message
    #pass in an object code and the object's frame (w/rt named frame_id)
    #object_grabber will plan approach, grasp and lift of object
    #returns codes regarding outcome
    
    # Action Codes
    
    # Pre-Grasp
    int32 TEST_CODE                         = 0     # "ping" action server
    int32 MOVE_TO_WAITING_POSE              = 1     # pre-pose motion: defined on param server out of way of sensors
    
    int32 PLAN_MOVE_TO_GRASP_POSE           = 2     # expects (1) current_object_pose, (2) object_ID, (3) grasp_option, (4) approach_option
                                                    # + send separate "grasp" command to gripper
    
    int32 PLAN_MOVE_FINE_TO_GRASP_POSE      = 3     # as above, but finer/slower motion 
    
    ### Move Object
    int32 PLAN_MOVE_OBJECT_JSPACE           = 4     # move grasped object to dest in joint-space
                                                    # expects: (i) des_object_pose, (2) object_ID, (3) grasp_option
    
    int32 PLAN_MOVE_OBJECT_CSPACE           = 5     # move grasped object to dest in cart-space
                                                    # expects as above
    
    int32 PLAN_MOVE_FINE_OBJECT_CSPACE      = 6     # as above, but finer/slower motion
    
    ### Post-Grasp
    int32 PLAN_WITHDRAW_FROM_OBJECT         = 7     # after grasp released, use strategy to depart object 
                                                    # (1) object_ID, (2) grasp_option, (3) depart_option
    
    int32 PLAN_WITHDRAW_FINE_FROM_OBJECT    = 8     # as above, but finer/slower motion
    
    ### Combined actions 
    int32 PLAN_OBJECT_GRASP                 = 9     # combine multiple elements above to acquire an object
    
    int32 CART_MOVE_CURRENT_TO_CART_GOAL    = 10    # plan/execute move to cartesian goal specified in "geometry_msgs/PoseStamped object_frame"
    
    int32 GRAB_OBJECT                       = 101   # plan/execute object grasp & lift
    int32 DROPOFF_OBJECT                    = 102   # plan/execute object placement and arm withdrawal
    int32 STRADDLE_OBJECT                   = 103   # plan/execute part of GRAB_OBJECT: move to grasp pose, then halt
    
    int32 SET_SPEED_FACTOR = 10                     # arg: changes trajectory time-scale: > 1.0 ==> slower
    
    ### Strategies:
    int32 DEFAULT_GRASP_STRATEGY            = 0     # executes approach and depart strategies. 
    
    int32 EXECUTE_PLANNED_MOVE = 100                # accept arm-motion plan and enable its execution
    
    ### Gripper commands:
    int32 GRIPPER_PREPARE_GRASP_OBJECT      = 20    # Prepare for grasp approach (open fingers)
    
    int32 GRIPPER_GRASP_OBJECT              = 21    # Perform appropriate action to grasp object (assumes gripper in appropriate pose)
                                                    # Client does not need to know what type of gripper is used
    
    int32 GRIPPER_RELEASE_OBJECT            = 22    # Release a grasped object
                                                    # (1) obj ID, (2) Grasp option
    
    int32 GRIPPER_IS_OBJECT_GRASPED         = 23    # Query (ret bool)
                                                    # (1) object_ID, (2) grasp option, and/or (3)  grasp test parameters; 
    
    ###                               
    
    #goal:
    int32 action_code                               # See codes above (i.e. MOVE_TO_WAITING_POSE, GRAB_OBJECT, DROPOFF_OBJECT)
    int32 object_id
    int32 grasp_option
    
    # Strategies: approach, grasp, lift, withdraw
    int32 approach_strategy
    int32 lift_object_strategy
    int32 dropoff_strategy
    int32 dropoff_withdraw_strategy
    
    geometry_msgs/PoseStamped object_frame          # wrt system_ref_frame or tf to this frame available
    float64                   speed_factor          # default 1.0
    float64[]                 gripper_test_params
    
    
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
    const resolved = new object_grabberGoal(null);
    if (msg.action_code !== undefined) {
      resolved.action_code = msg.action_code;
    }
    else {
      resolved.action_code = 0
    }

    if (msg.object_id !== undefined) {
      resolved.object_id = msg.object_id;
    }
    else {
      resolved.object_id = 0
    }

    if (msg.grasp_option !== undefined) {
      resolved.grasp_option = msg.grasp_option;
    }
    else {
      resolved.grasp_option = 0
    }

    if (msg.approach_strategy !== undefined) {
      resolved.approach_strategy = msg.approach_strategy;
    }
    else {
      resolved.approach_strategy = 0
    }

    if (msg.lift_object_strategy !== undefined) {
      resolved.lift_object_strategy = msg.lift_object_strategy;
    }
    else {
      resolved.lift_object_strategy = 0
    }

    if (msg.dropoff_strategy !== undefined) {
      resolved.dropoff_strategy = msg.dropoff_strategy;
    }
    else {
      resolved.dropoff_strategy = 0
    }

    if (msg.dropoff_withdraw_strategy !== undefined) {
      resolved.dropoff_withdraw_strategy = msg.dropoff_withdraw_strategy;
    }
    else {
      resolved.dropoff_withdraw_strategy = 0
    }

    if (msg.object_frame !== undefined) {
      resolved.object_frame = geometry_msgs.msg.PoseStamped.Resolve(msg.object_frame)
    }
    else {
      resolved.object_frame = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.speed_factor !== undefined) {
      resolved.speed_factor = msg.speed_factor;
    }
    else {
      resolved.speed_factor = 0.0
    }

    if (msg.gripper_test_params !== undefined) {
      resolved.gripper_test_params = msg.gripper_test_params;
    }
    else {
      resolved.gripper_test_params = []
    }

    return resolved;
    }
};

// Constants for message
object_grabberGoal.Constants = {
  TEST_CODE: 0,
  MOVE_TO_WAITING_POSE: 1,
  PLAN_MOVE_TO_GRASP_POSE: 2,
  PLAN_MOVE_FINE_TO_GRASP_POSE: 3,
  PLAN_MOVE_OBJECT_JSPACE: 4,
  PLAN_MOVE_OBJECT_CSPACE: 5,
  PLAN_MOVE_FINE_OBJECT_CSPACE: 6,
  PLAN_WITHDRAW_FROM_OBJECT: 7,
  PLAN_WITHDRAW_FINE_FROM_OBJECT: 8,
  PLAN_OBJECT_GRASP: 9,
  CART_MOVE_CURRENT_TO_CART_GOAL: 10,
  GRAB_OBJECT: 101,
  DROPOFF_OBJECT: 102,
  STRADDLE_OBJECT: 103,
  SET_SPEED_FACTOR: 10,
  DEFAULT_GRASP_STRATEGY: 0,
  EXECUTE_PLANNED_MOVE: 100,
  GRIPPER_PREPARE_GRASP_OBJECT: 20,
  GRIPPER_GRASP_OBJECT: 21,
  GRIPPER_RELEASE_OBJECT: 22,
  GRIPPER_IS_OBJECT_GRASPED: 23,
}

module.exports = object_grabberGoal;
