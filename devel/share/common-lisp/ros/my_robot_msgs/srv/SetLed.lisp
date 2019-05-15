; Auto-generated. Do not edit!


(cl:in-package my_robot_msgs-srv)


;//! \htmlinclude SetLed-request.msg.html

(cl:defclass <SetLed-request> (roslisp-msg-protocol:ros-message)
  ((num
    :reader num
    :initarg :num
    :type cl:integer
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:integer
    :initform 0))
)

(cl:defclass SetLed-request (<SetLed-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLed-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLed-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_robot_msgs-srv:<SetLed-request> is deprecated: use my_robot_msgs-srv:SetLed-request instead.")))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <SetLed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_msgs-srv:num-val is deprecated.  Use my_robot_msgs-srv:num instead.")
  (num m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <SetLed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_msgs-srv:state-val is deprecated.  Use my_robot_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLed-request>) ostream)
  "Serializes a message object of type '<SetLed-request>"
  (cl:let* ((signed (cl:slot-value msg 'num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLed-request>) istream)
  "Deserializes a message object of type '<SetLed-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLed-request>)))
  "Returns string type for a service object of type '<SetLed-request>"
  "my_robot_msgs/SetLedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLed-request)))
  "Returns string type for a service object of type 'SetLed-request"
  "my_robot_msgs/SetLedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLed-request>)))
  "Returns md5sum for a message object of type '<SetLed-request>"
  "a7baede22ace61d590317cb5b8c3838c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLed-request)))
  "Returns md5sum for a message object of type 'SetLed-request"
  "a7baede22ace61d590317cb5b8c3838c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLed-request>)))
  "Returns full string definition for message of type '<SetLed-request>"
  (cl:format cl:nil "int32 num~%int32 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLed-request)))
  "Returns full string definition for message of type 'SetLed-request"
  (cl:format cl:nil "int32 num~%int32 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLed-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLed-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLed-request
    (cl:cons ':num (num msg))
    (cl:cons ':state (state msg))
))
;//! \htmlinclude SetLed-response.msg.html

(cl:defclass <SetLed-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetLed-response (<SetLed-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLed-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLed-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_robot_msgs-srv:<SetLed-response> is deprecated: use my_robot_msgs-srv:SetLed-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetLed-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_msgs-srv:success-val is deprecated.  Use my_robot_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLed-response>) ostream)
  "Serializes a message object of type '<SetLed-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLed-response>) istream)
  "Deserializes a message object of type '<SetLed-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLed-response>)))
  "Returns string type for a service object of type '<SetLed-response>"
  "my_robot_msgs/SetLedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLed-response)))
  "Returns string type for a service object of type 'SetLed-response"
  "my_robot_msgs/SetLedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLed-response>)))
  "Returns md5sum for a message object of type '<SetLed-response>"
  "a7baede22ace61d590317cb5b8c3838c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLed-response)))
  "Returns md5sum for a message object of type 'SetLed-response"
  "a7baede22ace61d590317cb5b8c3838c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLed-response>)))
  "Returns full string definition for message of type '<SetLed-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLed-response)))
  "Returns full string definition for message of type 'SetLed-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLed-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLed-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLed-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetLed)))
  'SetLed-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetLed)))
  'SetLed-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLed)))
  "Returns string type for a service object of type '<SetLed>"
  "my_robot_msgs/SetLed")