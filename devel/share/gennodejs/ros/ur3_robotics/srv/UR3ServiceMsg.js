// Auto-generated. Do not edit!

// (in-package ur3_robotics.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let UR3Joints = require('../msg/UR3Joints.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class UR3ServiceMsgRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_input = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_input')) {
        this.joint_input = initObj.joint_input
      }
      else {
        this.joint_input = new UR3Joints();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UR3ServiceMsgRequest
    // Serialize message field [joint_input]
    bufferOffset = UR3Joints.serialize(obj.joint_input, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UR3ServiceMsgRequest
    let len;
    let data = new UR3ServiceMsgRequest(null);
    // Deserialize message field [joint_input]
    data.joint_input = UR3Joints.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ur3_robotics/UR3ServiceMsgRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '96b86e5a23687685361fc807179e53a0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    UR3Joints joint_input
    
    ================================================================================
    MSG: ur3_robotics/UR3Joints
    float64 joint_base
    float64 joint_shoulder
    float64 joint_elbow
    float64 joint_wrist1
    float64 joint_wrist2
    float64 joint_wrist3
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UR3ServiceMsgRequest(null);
    if (msg.joint_input !== undefined) {
      resolved.joint_input = UR3Joints.Resolve(msg.joint_input)
    }
    else {
      resolved.joint_input = new UR3Joints()
    }

    return resolved;
    }
};

class UR3ServiceMsgResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.trajectories = null;
    }
    else {
      if (initObj.hasOwnProperty('trajectories')) {
        this.trajectories = initObj.trajectories
      }
      else {
        this.trajectories = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UR3ServiceMsgResponse
    // Serialize message field [trajectories]
    // Serialize the length for message field [trajectories]
    bufferOffset = _serializer.uint32(obj.trajectories.length, buffer, bufferOffset);
    obj.trajectories.forEach((val) => {
      bufferOffset = UR3Joints.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UR3ServiceMsgResponse
    let len;
    let data = new UR3ServiceMsgResponse(null);
    // Deserialize message field [trajectories]
    // Deserialize array length for message field [trajectories]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.trajectories = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.trajectories[i] = UR3Joints.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 48 * object.trajectories.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ur3_robotics/UR3ServiceMsgResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e920b0e8b337d3e7d5ef4a47e929a85d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    UR3Joints[] trajectories
    
    
    ================================================================================
    MSG: ur3_robotics/UR3Joints
    float64 joint_base
    float64 joint_shoulder
    float64 joint_elbow
    float64 joint_wrist1
    float64 joint_wrist2
    float64 joint_wrist3
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UR3ServiceMsgResponse(null);
    if (msg.trajectories !== undefined) {
      resolved.trajectories = new Array(msg.trajectories.length);
      for (let i = 0; i < resolved.trajectories.length; ++i) {
        resolved.trajectories[i] = UR3Joints.Resolve(msg.trajectories[i]);
      }
    }
    else {
      resolved.trajectories = []
    }

    return resolved;
    }
};

module.exports = {
  Request: UR3ServiceMsgRequest,
  Response: UR3ServiceMsgResponse,
  md5sum() { return '7ca54bd198e5048726b3fe77d5b5509c'; },
  datatype() { return 'ur3_robotics/UR3ServiceMsg'; }
};
