// Auto-generated. Do not edit!

// (in-package bringup_car.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MotorStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.low_voltage = null;
      this.overloaded = null;
      this.power = null;
      this.encoder = null;
      this.speed = null;
    }
    else {
      if (initObj.hasOwnProperty('low_voltage')) {
        this.low_voltage = initObj.low_voltage
      }
      else {
        this.low_voltage = false;
      }
      if (initObj.hasOwnProperty('overloaded')) {
        this.overloaded = initObj.overloaded
      }
      else {
        this.overloaded = false;
      }
      if (initObj.hasOwnProperty('power')) {
        this.power = initObj.power
      }
      else {
        this.power = 0;
      }
      if (initObj.hasOwnProperty('encoder')) {
        this.encoder = initObj.encoder
      }
      else {
        this.encoder = 0.0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorStatus
    // Serialize message field [low_voltage]
    bufferOffset = _serializer.bool(obj.low_voltage, buffer, bufferOffset);
    // Serialize message field [overloaded]
    bufferOffset = _serializer.bool(obj.overloaded, buffer, bufferOffset);
    // Serialize message field [power]
    bufferOffset = _serializer.int8(obj.power, buffer, bufferOffset);
    // Serialize message field [encoder]
    bufferOffset = _serializer.float32(obj.encoder, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorStatus
    let len;
    let data = new MotorStatus(null);
    // Deserialize message field [low_voltage]
    data.low_voltage = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [overloaded]
    data.overloaded = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [power]
    data.power = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [encoder]
    data.encoder = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bringup_car/MotorStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fa9d221cf281ffba79b583b9dd588c6f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool low_voltage
    bool overloaded
    int8 power      # PWM duty cycle -100 ... 100
    float32 encoder # degree
    float32 speed   # degree per second
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorStatus(null);
    if (msg.low_voltage !== undefined) {
      resolved.low_voltage = msg.low_voltage;
    }
    else {
      resolved.low_voltage = false
    }

    if (msg.overloaded !== undefined) {
      resolved.overloaded = msg.overloaded;
    }
    else {
      resolved.overloaded = false
    }

    if (msg.power !== undefined) {
      resolved.power = msg.power;
    }
    else {
      resolved.power = 0
    }

    if (msg.encoder !== undefined) {
      resolved.encoder = msg.encoder;
    }
    else {
      resolved.encoder = 0.0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    return resolved;
    }
};

module.exports = MotorStatus;
