; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-srv)


;//! \htmlinclude turtle_letters-request.msg.html

(cl:defclass <turtle_letters-request> (roslisp-msg-protocol:ros-message)
  ((location_x
    :reader location_x
    :initarg :location_x
    :type cl:integer
    :initform 0)
   (location_y
    :reader location_y
    :initarg :location_y
    :type cl:integer
    :initform 0)
   (color
    :reader color
    :initarg :color
    :type cl:string
    :initform "")
   (letter
    :reader letter
    :initarg :letter
    :type cl:integer
    :initform 0))
)

(cl:defclass turtle_letters-request (<turtle_letters-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <turtle_letters-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'turtle_letters-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<turtle_letters-request> is deprecated: use beginner_tutorials-srv:turtle_letters-request instead.")))

(cl:ensure-generic-function 'location_x-val :lambda-list '(m))
(cl:defmethod location_x-val ((m <turtle_letters-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:location_x-val is deprecated.  Use beginner_tutorials-srv:location_x instead.")
  (location_x m))

(cl:ensure-generic-function 'location_y-val :lambda-list '(m))
(cl:defmethod location_y-val ((m <turtle_letters-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:location_y-val is deprecated.  Use beginner_tutorials-srv:location_y instead.")
  (location_y m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <turtle_letters-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:color-val is deprecated.  Use beginner_tutorials-srv:color instead.")
  (color m))

(cl:ensure-generic-function 'letter-val :lambda-list '(m))
(cl:defmethod letter-val ((m <turtle_letters-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:letter-val is deprecated.  Use beginner_tutorials-srv:letter instead.")
  (letter m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <turtle_letters-request>) ostream)
  "Serializes a message object of type '<turtle_letters-request>"
  (cl:let* ((signed (cl:slot-value msg 'location_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'location_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'color))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'color))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'letter)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <turtle_letters-request>) istream)
  "Deserializes a message object of type '<turtle_letters-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'location_x) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'location_y) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'color) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'color) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'letter)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<turtle_letters-request>)))
  "Returns string type for a service object of type '<turtle_letters-request>"
  "beginner_tutorials/turtle_lettersRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'turtle_letters-request)))
  "Returns string type for a service object of type 'turtle_letters-request"
  "beginner_tutorials/turtle_lettersRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<turtle_letters-request>)))
  "Returns md5sum for a message object of type '<turtle_letters-request>"
  "f5f0130de4c436554e39ca1270e27617")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'turtle_letters-request)))
  "Returns md5sum for a message object of type 'turtle_letters-request"
  "f5f0130de4c436554e39ca1270e27617")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<turtle_letters-request>)))
  "Returns full string definition for message of type '<turtle_letters-request>"
  (cl:format cl:nil "int64 location_x~%int64 location_y~%string color~%char letter~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'turtle_letters-request)))
  "Returns full string definition for message of type 'turtle_letters-request"
  (cl:format cl:nil "int64 location_x~%int64 location_y~%string color~%char letter~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <turtle_letters-request>))
  (cl:+ 0
     8
     8
     4 (cl:length (cl:slot-value msg 'color))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <turtle_letters-request>))
  "Converts a ROS message object to a list"
  (cl:list 'turtle_letters-request
    (cl:cons ':location_x (location_x msg))
    (cl:cons ':location_y (location_y msg))
    (cl:cons ':color (color msg))
    (cl:cons ':letter (letter msg))
))
;//! \htmlinclude turtle_letters-response.msg.html

(cl:defclass <turtle_letters-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass turtle_letters-response (<turtle_letters-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <turtle_letters-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'turtle_letters-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<turtle_letters-response> is deprecated: use beginner_tutorials-srv:turtle_letters-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <turtle_letters-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:result-val is deprecated.  Use beginner_tutorials-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <turtle_letters-response>) ostream)
  "Serializes a message object of type '<turtle_letters-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <turtle_letters-response>) istream)
  "Deserializes a message object of type '<turtle_letters-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<turtle_letters-response>)))
  "Returns string type for a service object of type '<turtle_letters-response>"
  "beginner_tutorials/turtle_lettersResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'turtle_letters-response)))
  "Returns string type for a service object of type 'turtle_letters-response"
  "beginner_tutorials/turtle_lettersResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<turtle_letters-response>)))
  "Returns md5sum for a message object of type '<turtle_letters-response>"
  "f5f0130de4c436554e39ca1270e27617")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'turtle_letters-response)))
  "Returns md5sum for a message object of type 'turtle_letters-response"
  "f5f0130de4c436554e39ca1270e27617")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<turtle_letters-response>)))
  "Returns full string definition for message of type '<turtle_letters-response>"
  (cl:format cl:nil "~%string result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'turtle_letters-response)))
  "Returns full string definition for message of type 'turtle_letters-response"
  (cl:format cl:nil "~%string result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <turtle_letters-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <turtle_letters-response>))
  "Converts a ROS message object to a list"
  (cl:list 'turtle_letters-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'turtle_letters)))
  'turtle_letters-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'turtle_letters)))
  'turtle_letters-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'turtle_letters)))
  "Returns string type for a service object of type '<turtle_letters>"
  "beginner_tutorials/turtle_letters")