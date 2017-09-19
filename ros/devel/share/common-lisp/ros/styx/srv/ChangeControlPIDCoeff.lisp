; Auto-generated. Do not edit!


(cl:in-package styx-srv)


;//! \htmlinclude ChangeControlPIDCoeff-request.msg.html

(cl:defclass <ChangeControlPIDCoeff-request> (roslisp-msg-protocol:ros-message)
  ((pidType
    :reader pidType
    :initarg :pidType
    :type cl:string
    :initform "")
   (Kp
    :reader Kp
    :initarg :Kp
    :type cl:float
    :initform 0.0)
   (Ki
    :reader Ki
    :initarg :Ki
    :type cl:float
    :initform 0.0)
   (Kd
    :reader Kd
    :initarg :Kd
    :type cl:float
    :initform 0.0))
)

(cl:defclass ChangeControlPIDCoeff-request (<ChangeControlPIDCoeff-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeControlPIDCoeff-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeControlPIDCoeff-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name styx-srv:<ChangeControlPIDCoeff-request> is deprecated: use styx-srv:ChangeControlPIDCoeff-request instead.")))

(cl:ensure-generic-function 'pidType-val :lambda-list '(m))
(cl:defmethod pidType-val ((m <ChangeControlPIDCoeff-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader styx-srv:pidType-val is deprecated.  Use styx-srv:pidType instead.")
  (pidType m))

(cl:ensure-generic-function 'Kp-val :lambda-list '(m))
(cl:defmethod Kp-val ((m <ChangeControlPIDCoeff-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader styx-srv:Kp-val is deprecated.  Use styx-srv:Kp instead.")
  (Kp m))

(cl:ensure-generic-function 'Ki-val :lambda-list '(m))
(cl:defmethod Ki-val ((m <ChangeControlPIDCoeff-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader styx-srv:Ki-val is deprecated.  Use styx-srv:Ki instead.")
  (Ki m))

(cl:ensure-generic-function 'Kd-val :lambda-list '(m))
(cl:defmethod Kd-val ((m <ChangeControlPIDCoeff-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader styx-srv:Kd-val is deprecated.  Use styx-srv:Kd instead.")
  (Kd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeControlPIDCoeff-request>) ostream)
  "Serializes a message object of type '<ChangeControlPIDCoeff-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pidType))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pidType))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Kp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Ki))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Kd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeControlPIDCoeff-request>) istream)
  "Deserializes a message object of type '<ChangeControlPIDCoeff-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pidType) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pidType) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Kp) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Ki) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Kd) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeControlPIDCoeff-request>)))
  "Returns string type for a service object of type '<ChangeControlPIDCoeff-request>"
  "styx/ChangeControlPIDCoeffRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeControlPIDCoeff-request)))
  "Returns string type for a service object of type 'ChangeControlPIDCoeff-request"
  "styx/ChangeControlPIDCoeffRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeControlPIDCoeff-request>)))
  "Returns md5sum for a message object of type '<ChangeControlPIDCoeff-request>"
  "e613536b67df3009b4780803f4d01553")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeControlPIDCoeff-request)))
  "Returns md5sum for a message object of type 'ChangeControlPIDCoeff-request"
  "e613536b67df3009b4780803f4d01553")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeControlPIDCoeff-request>)))
  "Returns full string definition for message of type '<ChangeControlPIDCoeff-request>"
  (cl:format cl:nil "string pidType~%float64 Kp~%float64 Ki~%float64 Kd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeControlPIDCoeff-request)))
  "Returns full string definition for message of type 'ChangeControlPIDCoeff-request"
  (cl:format cl:nil "string pidType~%float64 Kp~%float64 Ki~%float64 Kd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeControlPIDCoeff-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'pidType))
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeControlPIDCoeff-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeControlPIDCoeff-request
    (cl:cons ':pidType (pidType msg))
    (cl:cons ':Kp (Kp msg))
    (cl:cons ':Ki (Ki msg))
    (cl:cons ':Kd (Kd msg))
))
;//! \htmlinclude ChangeControlPIDCoeff-response.msg.html

(cl:defclass <ChangeControlPIDCoeff-response> (roslisp-msg-protocol:ros-message)
  ((feedback
    :reader feedback
    :initarg :feedback
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ChangeControlPIDCoeff-response (<ChangeControlPIDCoeff-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeControlPIDCoeff-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeControlPIDCoeff-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name styx-srv:<ChangeControlPIDCoeff-response> is deprecated: use styx-srv:ChangeControlPIDCoeff-response instead.")))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <ChangeControlPIDCoeff-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader styx-srv:feedback-val is deprecated.  Use styx-srv:feedback instead.")
  (feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeControlPIDCoeff-response>) ostream)
  "Serializes a message object of type '<ChangeControlPIDCoeff-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'feedback) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeControlPIDCoeff-response>) istream)
  "Deserializes a message object of type '<ChangeControlPIDCoeff-response>"
    (cl:setf (cl:slot-value msg 'feedback) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeControlPIDCoeff-response>)))
  "Returns string type for a service object of type '<ChangeControlPIDCoeff-response>"
  "styx/ChangeControlPIDCoeffResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeControlPIDCoeff-response)))
  "Returns string type for a service object of type 'ChangeControlPIDCoeff-response"
  "styx/ChangeControlPIDCoeffResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeControlPIDCoeff-response>)))
  "Returns md5sum for a message object of type '<ChangeControlPIDCoeff-response>"
  "e613536b67df3009b4780803f4d01553")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeControlPIDCoeff-response)))
  "Returns md5sum for a message object of type 'ChangeControlPIDCoeff-response"
  "e613536b67df3009b4780803f4d01553")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeControlPIDCoeff-response>)))
  "Returns full string definition for message of type '<ChangeControlPIDCoeff-response>"
  (cl:format cl:nil "bool feedback~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeControlPIDCoeff-response)))
  "Returns full string definition for message of type 'ChangeControlPIDCoeff-response"
  (cl:format cl:nil "bool feedback~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeControlPIDCoeff-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeControlPIDCoeff-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeControlPIDCoeff-response
    (cl:cons ':feedback (feedback msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ChangeControlPIDCoeff)))
  'ChangeControlPIDCoeff-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ChangeControlPIDCoeff)))
  'ChangeControlPIDCoeff-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeControlPIDCoeff)))
  "Returns string type for a service object of type '<ChangeControlPIDCoeff>"
  "styx/ChangeControlPIDCoeff")