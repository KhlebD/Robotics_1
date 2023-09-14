; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-msg)


;//! \htmlinclude ReqMsg.msg.html

(cl:defclass <ReqMsg> (roslisp-msg-protocol:ros-message)
  ((info
    :reader info
    :initarg :info
    :type cl:string
    :initform ""))
)

(cl:defclass ReqMsg (<ReqMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReqMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReqMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-msg:<ReqMsg> is deprecated: use beginner_tutorials-msg:ReqMsg instead.")))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <ReqMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:info-val is deprecated.  Use beginner_tutorials-msg:info instead.")
  (info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReqMsg>) ostream)
  "Serializes a message object of type '<ReqMsg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReqMsg>) istream)
  "Deserializes a message object of type '<ReqMsg>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReqMsg>)))
  "Returns string type for a message object of type '<ReqMsg>"
  "beginner_tutorials/ReqMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReqMsg)))
  "Returns string type for a message object of type 'ReqMsg"
  "beginner_tutorials/ReqMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReqMsg>)))
  "Returns md5sum for a message object of type '<ReqMsg>"
  "c10fc26d5cca9a4b9114f5fc5dea9570")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReqMsg)))
  "Returns md5sum for a message object of type 'ReqMsg"
  "c10fc26d5cca9a4b9114f5fc5dea9570")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReqMsg>)))
  "Returns full string definition for message of type '<ReqMsg>"
  (cl:format cl:nil "string info~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReqMsg)))
  "Returns full string definition for message of type 'ReqMsg"
  (cl:format cl:nil "string info~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReqMsg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReqMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'ReqMsg
    (cl:cons ':info (info msg))
))
