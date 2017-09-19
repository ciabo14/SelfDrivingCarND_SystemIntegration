; Auto-generated. Do not edit!


(cl:in-package styx-srv)


;//! \htmlinclude ChangeTargetSpeed-request.msg.html

(cl:defclass <ChangeTargetSpeed-request> (roslisp-msg-protocol:ros-message)
  ((target_speed
    :reader target_speed
    :initarg :target_speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass ChangeTargetSpeed-request (<ChangeTargetSpeed-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeTargetSpeed-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeTargetSpeed-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name styx-srv:<ChangeTargetSpeed-request> is deprecated: use styx-srv:ChangeTargetSpeed-request instead.")))

(cl:ensure-generic-function 'target_speed-val :lambda-list '(m))
(cl:defmethod target_speed-val ((m <ChangeTargetSpeed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader styx-srv:target_speed-val is deprecated.  Use styx-srv:target_speed instead.")
  (target_speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeTargetSpeed-request>) ostream)
  "Serializes a message object of type '<ChangeTargetSpeed-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'target_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeTargetSpeed-request>) istream)
  "Deserializes a message object of type '<ChangeTargetSpeed-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_speed) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeTargetSpeed-request>)))
  "Returns string type for a service object of type '<ChangeTargetSpeed-request>"
  "styx/ChangeTargetSpeedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeTargetSpeed-request)))
  "Returns string type for a service object of type 'ChangeTargetSpeed-request"
  "styx/ChangeTargetSpeedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeTargetSpeed-request>)))
  "Returns md5sum for a message object of type '<ChangeTargetSpeed-request>"
  "fea0a386a47268810258a0f8d07589cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeTargetSpeed-request)))
  "Returns md5sum for a message object of type 'ChangeTargetSpeed-request"
  "fea0a386a47268810258a0f8d07589cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeTargetSpeed-request>)))
  "Returns full string definition for message of type '<ChangeTargetSpeed-request>"
  (cl:format cl:nil "float64 target_speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeTargetSpeed-request)))
  "Returns full string definition for message of type 'ChangeTargetSpeed-request"
  (cl:format cl:nil "float64 target_speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeTargetSpeed-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeTargetSpeed-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeTargetSpeed-request
    (cl:cons ':target_speed (target_speed msg))
))
;//! \htmlinclude ChangeTargetSpeed-response.msg.html

(cl:defclass <ChangeTargetSpeed-response> (roslisp-msg-protocol:ros-message)
  ((feedback
    :reader feedback
    :initarg :feedback
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ChangeTargetSpeed-response (<ChangeTargetSpeed-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeTargetSpeed-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeTargetSpeed-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name styx-srv:<ChangeTargetSpeed-response> is deprecated: use styx-srv:ChangeTargetSpeed-response instead.")))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <ChangeTargetSpeed-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader styx-srv:feedback-val is deprecated.  Use styx-srv:feedback instead.")
  (feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeTargetSpeed-response>) ostream)
  "Serializes a message object of type '<ChangeTargetSpeed-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'feedback) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeTargetSpeed-response>) istream)
  "Deserializes a message object of type '<ChangeTargetSpeed-response>"
    (cl:setf (cl:slot-value msg 'feedback) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeTargetSpeed-response>)))
  "Returns string type for a service object of type '<ChangeTargetSpeed-response>"
  "styx/ChangeTargetSpeedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeTargetSpeed-response)))
  "Returns string type for a service object of type 'ChangeTargetSpeed-response"
  "styx/ChangeTargetSpeedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeTargetSpeed-response>)))
  "Returns md5sum for a message object of type '<ChangeTargetSpeed-response>"
  "fea0a386a47268810258a0f8d07589cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeTargetSpeed-response)))
  "Returns md5sum for a message object of type 'ChangeTargetSpeed-response"
  "fea0a386a47268810258a0f8d07589cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeTargetSpeed-response>)))
  "Returns full string definition for message of type '<ChangeTargetSpeed-response>"
  (cl:format cl:nil "bool feedback~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeTargetSpeed-response)))
  "Returns full string definition for message of type 'ChangeTargetSpeed-response"
  (cl:format cl:nil "bool feedback~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeTargetSpeed-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeTargetSpeed-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeTargetSpeed-response
    (cl:cons ':feedback (feedback msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ChangeTargetSpeed)))
  'ChangeTargetSpeed-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ChangeTargetSpeed)))
  'ChangeTargetSpeed-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeTargetSpeed)))
  "Returns string type for a service object of type '<ChangeTargetSpeed>"
  "styx/ChangeTargetSpeed")