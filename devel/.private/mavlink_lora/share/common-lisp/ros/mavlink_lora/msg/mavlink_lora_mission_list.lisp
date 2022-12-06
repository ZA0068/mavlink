; Auto-generated. Do not edit!


(cl:in-package mavlink_lora-msg)


;//! \htmlinclude mavlink_lora_mission_list.msg.html

(cl:defclass <mavlink_lora_mission_list> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (time_usec
    :reader time_usec
    :initarg :time_usec
    :type cl:integer
    :initform 0)
   (waypoints
    :reader waypoints
    :initarg :waypoints
    :type (cl:vector mavlink_lora-msg:mavlink_lora_mission_item_int)
   :initform (cl:make-array 0 :element-type 'mavlink_lora-msg:mavlink_lora_mission_item_int :initial-element (cl:make-instance 'mavlink_lora-msg:mavlink_lora_mission_item_int))))
)

(cl:defclass mavlink_lora_mission_list (<mavlink_lora_mission_list>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mavlink_lora_mission_list>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mavlink_lora_mission_list)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavlink_lora-msg:<mavlink_lora_mission_list> is deprecated: use mavlink_lora-msg:mavlink_lora_mission_list instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <mavlink_lora_mission_list>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:header-val is deprecated.  Use mavlink_lora-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time_usec-val :lambda-list '(m))
(cl:defmethod time_usec-val ((m <mavlink_lora_mission_list>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:time_usec-val is deprecated.  Use mavlink_lora-msg:time_usec instead.")
  (time_usec m))

(cl:ensure-generic-function 'waypoints-val :lambda-list '(m))
(cl:defmethod waypoints-val ((m <mavlink_lora_mission_list>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:waypoints-val is deprecated.  Use mavlink_lora-msg:waypoints instead.")
  (waypoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mavlink_lora_mission_list>) ostream)
  "Serializes a message object of type '<mavlink_lora_mission_list>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_usec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_usec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_usec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_usec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'time_usec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'time_usec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'time_usec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'time_usec)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'waypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'waypoints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mavlink_lora_mission_list>) istream)
  "Deserializes a message object of type '<mavlink_lora_mission_list>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_usec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_usec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_usec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_usec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'time_usec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'time_usec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'time_usec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'time_usec)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'waypoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'waypoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mavlink_lora-msg:mavlink_lora_mission_item_int))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mavlink_lora_mission_list>)))
  "Returns string type for a message object of type '<mavlink_lora_mission_list>"
  "mavlink_lora/mavlink_lora_mission_list")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mavlink_lora_mission_list)))
  "Returns string type for a message object of type 'mavlink_lora_mission_list"
  "mavlink_lora/mavlink_lora_mission_list")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mavlink_lora_mission_list>)))
  "Returns md5sum for a message object of type '<mavlink_lora_mission_list>"
  "f7ec697a600cbe250104e1564a581a88")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mavlink_lora_mission_list)))
  "Returns md5sum for a message object of type 'mavlink_lora_mission_list"
  "f7ec697a600cbe250104e1564a581a88")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mavlink_lora_mission_list>)))
  "Returns full string definition for message of type '<mavlink_lora_mission_list>"
  (cl:format cl:nil "Header header~%uint64 time_usec~%~%mavlink_lora_mission_item_int[] waypoints~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mavlink_lora/mavlink_lora_mission_item_int~%float64 param1~%float64 param2~%float64 param3~%float64 param4~%int32 x~%int32 y~%float64 z~%uint16 seq~%uint16 command~%uint8 target_system~%uint8 target_component~%uint8 frame~%uint8 current~%uint8 autocontinue~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mavlink_lora_mission_list)))
  "Returns full string definition for message of type 'mavlink_lora_mission_list"
  (cl:format cl:nil "Header header~%uint64 time_usec~%~%mavlink_lora_mission_item_int[] waypoints~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mavlink_lora/mavlink_lora_mission_item_int~%float64 param1~%float64 param2~%float64 param3~%float64 param4~%int32 x~%int32 y~%float64 z~%uint16 seq~%uint16 command~%uint8 target_system~%uint8 target_component~%uint8 frame~%uint8 current~%uint8 autocontinue~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mavlink_lora_mission_list>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'waypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mavlink_lora_mission_list>))
  "Converts a ROS message object to a list"
  (cl:list 'mavlink_lora_mission_list
    (cl:cons ':header (header msg))
    (cl:cons ':time_usec (time_usec msg))
    (cl:cons ':waypoints (waypoints msg))
))
