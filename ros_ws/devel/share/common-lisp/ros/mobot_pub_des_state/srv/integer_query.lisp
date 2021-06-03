; Auto-generated. Do not edit!


(cl:in-package mobot_pub_des_state-srv)


;//! \htmlinclude integer_query-request.msg.html

(cl:defclass <integer_query-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass integer_query-request (<integer_query-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <integer_query-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'integer_query-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mobot_pub_des_state-srv:<integer_query-request> is deprecated: use mobot_pub_des_state-srv:integer_query-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <integer_query-request>) ostream)
  "Serializes a message object of type '<integer_query-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <integer_query-request>) istream)
  "Deserializes a message object of type '<integer_query-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<integer_query-request>)))
  "Returns string type for a service object of type '<integer_query-request>"
  "mobot_pub_des_state/integer_queryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'integer_query-request)))
  "Returns string type for a service object of type 'integer_query-request"
  "mobot_pub_des_state/integer_queryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<integer_query-request>)))
  "Returns md5sum for a message object of type '<integer_query-request>"
  "648675cba6b3813e536ad7dad105da98")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'integer_query-request)))
  "Returns md5sum for a message object of type 'integer_query-request"
  "648675cba6b3813e536ad7dad105da98")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<integer_query-request>)))
  "Returns full string definition for message of type '<integer_query-request>"
  (cl:format cl:nil "#empty ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'integer_query-request)))
  "Returns full string definition for message of type 'integer_query-request"
  (cl:format cl:nil "#empty ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <integer_query-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <integer_query-request>))
  "Converts a ROS message object to a list"
  (cl:list 'integer_query-request
))
;//! \htmlinclude integer_query-response.msg.html

(cl:defclass <integer_query-response> (roslisp-msg-protocol:ros-message)
  ((int_val
    :reader int_val
    :initarg :int_val
    :type cl:integer
    :initform 0))
)

(cl:defclass integer_query-response (<integer_query-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <integer_query-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'integer_query-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mobot_pub_des_state-srv:<integer_query-response> is deprecated: use mobot_pub_des_state-srv:integer_query-response instead.")))

(cl:ensure-generic-function 'int_val-val :lambda-list '(m))
(cl:defmethod int_val-val ((m <integer_query-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobot_pub_des_state-srv:int_val-val is deprecated.  Use mobot_pub_des_state-srv:int_val instead.")
  (int_val m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <integer_query-response>) ostream)
  "Serializes a message object of type '<integer_query-response>"
  (cl:let* ((signed (cl:slot-value msg 'int_val)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <integer_query-response>) istream)
  "Deserializes a message object of type '<integer_query-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'int_val) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<integer_query-response>)))
  "Returns string type for a service object of type '<integer_query-response>"
  "mobot_pub_des_state/integer_queryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'integer_query-response)))
  "Returns string type for a service object of type 'integer_query-response"
  "mobot_pub_des_state/integer_queryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<integer_query-response>)))
  "Returns md5sum for a message object of type '<integer_query-response>"
  "648675cba6b3813e536ad7dad105da98")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'integer_query-response)))
  "Returns md5sum for a message object of type 'integer_query-response"
  "648675cba6b3813e536ad7dad105da98")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<integer_query-response>)))
  "Returns full string definition for message of type '<integer_query-response>"
  (cl:format cl:nil "#response: an integer~%int32 int_val~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'integer_query-response)))
  "Returns full string definition for message of type 'integer_query-response"
  (cl:format cl:nil "#response: an integer~%int32 int_val~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <integer_query-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <integer_query-response>))
  "Converts a ROS message object to a list"
  (cl:list 'integer_query-response
    (cl:cons ':int_val (int_val msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'integer_query)))
  'integer_query-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'integer_query)))
  'integer_query-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'integer_query)))
  "Returns string type for a service object of type '<integer_query>"
  "mobot_pub_des_state/integer_query")