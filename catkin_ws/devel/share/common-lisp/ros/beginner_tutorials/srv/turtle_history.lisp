; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-srv)


;//! \htmlinclude turtle_history-request.msg.html

(cl:defclass <turtle_history-request> (roslisp-msg-protocol:ros-message)
  ((info
    :reader info
    :initarg :info
    :type cl:string
    :initform ""))
)

(cl:defclass turtle_history-request (<turtle_history-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <turtle_history-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'turtle_history-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<turtle_history-request> is deprecated: use beginner_tutorials-srv:turtle_history-request instead.")))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <turtle_history-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:info-val is deprecated.  Use beginner_tutorials-srv:info instead.")
  (info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <turtle_history-request>) ostream)
  "Serializes a message object of type '<turtle_history-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <turtle_history-request>) istream)
  "Deserializes a message object of type '<turtle_history-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<turtle_history-request>)))
  "Returns string type for a service object of type '<turtle_history-request>"
  "beginner_tutorials/turtle_historyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'turtle_history-request)))
  "Returns string type for a service object of type 'turtle_history-request"
  "beginner_tutorials/turtle_historyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<turtle_history-request>)))
  "Returns md5sum for a message object of type '<turtle_history-request>"
  "61e5a00050969050ae93076978354c3f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'turtle_history-request)))
  "Returns md5sum for a message object of type 'turtle_history-request"
  "61e5a00050969050ae93076978354c3f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<turtle_history-request>)))
  "Returns full string definition for message of type '<turtle_history-request>"
  (cl:format cl:nil "string info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'turtle_history-request)))
  "Returns full string definition for message of type 'turtle_history-request"
  (cl:format cl:nil "string info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <turtle_history-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <turtle_history-request>))
  "Converts a ROS message object to a list"
  (cl:list 'turtle_history-request
    (cl:cons ':info (info msg))
))
;//! \htmlinclude turtle_history-response.msg.html

(cl:defclass <turtle_history-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass turtle_history-response (<turtle_history-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <turtle_history-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'turtle_history-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<turtle_history-response> is deprecated: use beginner_tutorials-srv:turtle_history-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <turtle_history-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:result-val is deprecated.  Use beginner_tutorials-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <turtle_history-response>) ostream)
  "Serializes a message object of type '<turtle_history-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <turtle_history-response>) istream)
  "Deserializes a message object of type '<turtle_history-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<turtle_history-response>)))
  "Returns string type for a service object of type '<turtle_history-response>"
  "beginner_tutorials/turtle_historyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'turtle_history-response)))
  "Returns string type for a service object of type 'turtle_history-response"
  "beginner_tutorials/turtle_historyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<turtle_history-response>)))
  "Returns md5sum for a message object of type '<turtle_history-response>"
  "61e5a00050969050ae93076978354c3f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'turtle_history-response)))
  "Returns md5sum for a message object of type 'turtle_history-response"
  "61e5a00050969050ae93076978354c3f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<turtle_history-response>)))
  "Returns full string definition for message of type '<turtle_history-response>"
  (cl:format cl:nil "string result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'turtle_history-response)))
  "Returns full string definition for message of type 'turtle_history-response"
  (cl:format cl:nil "string result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <turtle_history-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <turtle_history-response>))
  "Converts a ROS message object to a list"
  (cl:list 'turtle_history-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'turtle_history)))
  'turtle_history-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'turtle_history)))
  'turtle_history-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'turtle_history)))
  "Returns string type for a service object of type '<turtle_history>"
  "beginner_tutorials/turtle_history")