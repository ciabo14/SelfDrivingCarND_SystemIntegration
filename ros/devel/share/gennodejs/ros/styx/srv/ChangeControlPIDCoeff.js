// Auto-generated. Do not edit!

// (in-package styx.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ChangeControlPIDCoeffRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pidType = null;
      this.Kp = null;
      this.Ki = null;
      this.Kd = null;
    }
    else {
      if (initObj.hasOwnProperty('pidType')) {
        this.pidType = initObj.pidType
      }
      else {
        this.pidType = '';
      }
      if (initObj.hasOwnProperty('Kp')) {
        this.Kp = initObj.Kp
      }
      else {
        this.Kp = 0.0;
      }
      if (initObj.hasOwnProperty('Ki')) {
        this.Ki = initObj.Ki
      }
      else {
        this.Ki = 0.0;
      }
      if (initObj.hasOwnProperty('Kd')) {
        this.Kd = initObj.Kd
      }
      else {
        this.Kd = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChangeControlPIDCoeffRequest
    // Serialize message field [pidType]
    bufferOffset = _serializer.string(obj.pidType, buffer, bufferOffset);
    // Serialize message field [Kp]
    bufferOffset = _serializer.float64(obj.Kp, buffer, bufferOffset);
    // Serialize message field [Ki]
    bufferOffset = _serializer.float64(obj.Ki, buffer, bufferOffset);
    // Serialize message field [Kd]
    bufferOffset = _serializer.float64(obj.Kd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeControlPIDCoeffRequest
    let len;
    let data = new ChangeControlPIDCoeffRequest(null);
    // Deserialize message field [pidType]
    data.pidType = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [Kp]
    data.Kp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Ki]
    data.Ki = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Kd]
    data.Kd = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.pidType.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a service object
    return 'styx/ChangeControlPIDCoeffRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '32fa03214de76fbca04b20cf11091df6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string pidType
    float64 Kp
    float64 Ki
    float64 Kd
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChangeControlPIDCoeffRequest(null);
    if (msg.pidType !== undefined) {
      resolved.pidType = msg.pidType;
    }
    else {
      resolved.pidType = ''
    }

    if (msg.Kp !== undefined) {
      resolved.Kp = msg.Kp;
    }
    else {
      resolved.Kp = 0.0
    }

    if (msg.Ki !== undefined) {
      resolved.Ki = msg.Ki;
    }
    else {
      resolved.Ki = 0.0
    }

    if (msg.Kd !== undefined) {
      resolved.Kd = msg.Kd;
    }
    else {
      resolved.Kd = 0.0
    }

    return resolved;
    }
};

class ChangeControlPIDCoeffResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.feedback = null;
    }
    else {
      if (initObj.hasOwnProperty('feedback')) {
        this.feedback = initObj.feedback
      }
      else {
        this.feedback = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChangeControlPIDCoeffResponse
    // Serialize message field [feedback]
    bufferOffset = _serializer.bool(obj.feedback, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeControlPIDCoeffResponse
    let len;
    let data = new ChangeControlPIDCoeffResponse(null);
    // Deserialize message field [feedback]
    data.feedback = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'styx/ChangeControlPIDCoeffResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f1f168a39479bedb24dba7a087426182';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool feedback
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChangeControlPIDCoeffResponse(null);
    if (msg.feedback !== undefined) {
      resolved.feedback = msg.feedback;
    }
    else {
      resolved.feedback = false
    }

    return resolved;
    }
};

module.exports = {
  Request: ChangeControlPIDCoeffRequest,
  Response: ChangeControlPIDCoeffResponse,
  md5sum() { return 'e613536b67df3009b4780803f4d01553'; },
  datatype() { return 'styx/ChangeControlPIDCoeff'; }
};
