// Auto-generated. Do not edit!

// (in-package mobot_pub_des_state.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class integer_queryRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type integer_queryRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type integer_queryRequest
    let len;
    let data = new integer_queryRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mobot_pub_des_state/integer_queryRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #empty 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new integer_queryRequest(null);
    return resolved;
    }
};

class integer_queryResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.int_val = null;
    }
    else {
      if (initObj.hasOwnProperty('int_val')) {
        this.int_val = initObj.int_val
      }
      else {
        this.int_val = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type integer_queryResponse
    // Serialize message field [int_val]
    bufferOffset = _serializer.int32(obj.int_val, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type integer_queryResponse
    let len;
    let data = new integer_queryResponse(null);
    // Deserialize message field [int_val]
    data.int_val = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mobot_pub_des_state/integer_queryResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '648675cba6b3813e536ad7dad105da98';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #response: an integer
    int32 int_val
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new integer_queryResponse(null);
    if (msg.int_val !== undefined) {
      resolved.int_val = msg.int_val;
    }
    else {
      resolved.int_val = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: integer_queryRequest,
  Response: integer_queryResponse,
  md5sum() { return '648675cba6b3813e536ad7dad105da98'; },
  datatype() { return 'mobot_pub_des_state/integer_query'; }
};
