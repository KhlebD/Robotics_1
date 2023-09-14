// Auto-generated. Do not edit!

// (in-package beginner_tutorials.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class turtle_lettersRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.location_x = null;
      this.location_y = null;
      this.color = null;
      this.letter = null;
    }
    else {
      if (initObj.hasOwnProperty('location_x')) {
        this.location_x = initObj.location_x
      }
      else {
        this.location_x = 0;
      }
      if (initObj.hasOwnProperty('location_y')) {
        this.location_y = initObj.location_y
      }
      else {
        this.location_y = 0;
      }
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = '';
      }
      if (initObj.hasOwnProperty('letter')) {
        this.letter = initObj.letter
      }
      else {
        this.letter = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type turtle_lettersRequest
    // Serialize message field [location_x]
    bufferOffset = _serializer.int64(obj.location_x, buffer, bufferOffset);
    // Serialize message field [location_y]
    bufferOffset = _serializer.int64(obj.location_y, buffer, bufferOffset);
    // Serialize message field [color]
    bufferOffset = _serializer.string(obj.color, buffer, bufferOffset);
    // Serialize message field [letter]
    bufferOffset = _serializer.char(obj.letter, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type turtle_lettersRequest
    let len;
    let data = new turtle_lettersRequest(null);
    // Deserialize message field [location_x]
    data.location_x = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [location_y]
    data.location_y = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [color]
    data.color = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [letter]
    data.letter = _deserializer.char(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.color);
    return length + 21;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beginner_tutorials/turtle_lettersRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ca26006222d06ee19db7f51f3eb5f1c5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 location_x
    int64 location_y
    string color
    char letter
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new turtle_lettersRequest(null);
    if (msg.location_x !== undefined) {
      resolved.location_x = msg.location_x;
    }
    else {
      resolved.location_x = 0
    }

    if (msg.location_y !== undefined) {
      resolved.location_y = msg.location_y;
    }
    else {
      resolved.location_y = 0
    }

    if (msg.color !== undefined) {
      resolved.color = msg.color;
    }
    else {
      resolved.color = ''
    }

    if (msg.letter !== undefined) {
      resolved.letter = msg.letter;
    }
    else {
      resolved.letter = 0
    }

    return resolved;
    }
};

class turtle_lettersResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type turtle_lettersResponse
    // Serialize message field [result]
    bufferOffset = _serializer.string(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type turtle_lettersResponse
    let len;
    let data = new turtle_lettersResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.result);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beginner_tutorials/turtle_lettersResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c22f2a1ed8654a0b365f1bb3f7ff2c0f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    string result
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new turtle_lettersResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: turtle_lettersRequest,
  Response: turtle_lettersResponse,
  md5sum() { return 'f5f0130de4c436554e39ca1270e27617'; },
  datatype() { return 'beginner_tutorials/turtle_letters'; }
};
