// Auto-generated. Do not edit!

// (in-package ur3_robotics.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class UR3Joints {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_base = null;
      this.joint_shoulder = null;
      this.joint_elbow = null;
      this.joint_wrist1 = null;
      this.joint_wrist2 = null;
      this.joint_wrist3 = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_base')) {
        this.joint_base = initObj.joint_base
      }
      else {
        this.joint_base = 0.0;
      }
      if (initObj.hasOwnProperty('joint_shoulder')) {
        this.joint_shoulder = initObj.joint_shoulder
      }
      else {
        this.joint_shoulder = 0.0;
      }
      if (initObj.hasOwnProperty('joint_elbow')) {
        this.joint_elbow = initObj.joint_elbow
      }
      else {
        this.joint_elbow = 0.0;
      }
      if (initObj.hasOwnProperty('joint_wrist1')) {
        this.joint_wrist1 = initObj.joint_wrist1
      }
      else {
        this.joint_wrist1 = 0.0;
      }
      if (initObj.hasOwnProperty('joint_wrist2')) {
        this.joint_wrist2 = initObj.joint_wrist2
      }
      else {
        this.joint_wrist2 = 0.0;
      }
      if (initObj.hasOwnProperty('joint_wrist3')) {
        this.joint_wrist3 = initObj.joint_wrist3
      }
      else {
        this.joint_wrist3 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UR3Joints
    // Serialize message field [joint_base]
    bufferOffset = _serializer.float64(obj.joint_base, buffer, bufferOffset);
    // Serialize message field [joint_shoulder]
    bufferOffset = _serializer.float64(obj.joint_shoulder, buffer, bufferOffset);
    // Serialize message field [joint_elbow]
    bufferOffset = _serializer.float64(obj.joint_elbow, buffer, bufferOffset);
    // Serialize message field [joint_wrist1]
    bufferOffset = _serializer.float64(obj.joint_wrist1, buffer, bufferOffset);
    // Serialize message field [joint_wrist2]
    bufferOffset = _serializer.float64(obj.joint_wrist2, buffer, bufferOffset);
    // Serialize message field [joint_wrist3]
    bufferOffset = _serializer.float64(obj.joint_wrist3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UR3Joints
    let len;
    let data = new UR3Joints(null);
    // Deserialize message field [joint_base]
    data.joint_base = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [joint_shoulder]
    data.joint_shoulder = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [joint_elbow]
    data.joint_elbow = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [joint_wrist1]
    data.joint_wrist1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [joint_wrist2]
    data.joint_wrist2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [joint_wrist3]
    data.joint_wrist3 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ur3_robotics/UR3Joints';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5ff4378c889479c886a29cb017cf9cde';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new UR3Joints(null);
    if (msg.joint_base !== undefined) {
      resolved.joint_base = msg.joint_base;
    }
    else {
      resolved.joint_base = 0.0
    }

    if (msg.joint_shoulder !== undefined) {
      resolved.joint_shoulder = msg.joint_shoulder;
    }
    else {
      resolved.joint_shoulder = 0.0
    }

    if (msg.joint_elbow !== undefined) {
      resolved.joint_elbow = msg.joint_elbow;
    }
    else {
      resolved.joint_elbow = 0.0
    }

    if (msg.joint_wrist1 !== undefined) {
      resolved.joint_wrist1 = msg.joint_wrist1;
    }
    else {
      resolved.joint_wrist1 = 0.0
    }

    if (msg.joint_wrist2 !== undefined) {
      resolved.joint_wrist2 = msg.joint_wrist2;
    }
    else {
      resolved.joint_wrist2 = 0.0
    }

    if (msg.joint_wrist3 !== undefined) {
      resolved.joint_wrist3 = msg.joint_wrist3;
    }
    else {
      resolved.joint_wrist3 = 0.0
    }

    return resolved;
    }
};

module.exports = UR3Joints;
