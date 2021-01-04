; Auto-generated. Do not edit!


(cl:in-package ur3_robotics-srv)


;//! \htmlinclude UR3ServiceMsg-request.msg.html

(cl:defclass <UR3ServiceMsg-request> (roslisp-msg-protocol:ros-message)
  ((joint_input
    :reader joint_input
    :initarg :joint_input
    :type ur3_robotics-msg:UR3Joints
    :initform (cl:make-instance 'ur3_robotics-msg:UR3Joints)))
)

(cl:defclass UR3ServiceMsg-request (<UR3ServiceMsg-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UR3ServiceMsg-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UR3ServiceMsg-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur3_robotics-srv:<UR3ServiceMsg-request> is deprecated: use ur3_robotics-srv:UR3ServiceMsg-request instead.")))

(cl:ensure-generic-function 'joint_input-val :lambda-list '(m))
(cl:defmethod joint_input-val ((m <UR3ServiceMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3_robotics-srv:joint_input-val is deprecated.  Use ur3_robotics-srv:joint_input instead.")
  (joint_input m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UR3ServiceMsg-request>) ostream)
  "Serializes a message object of type '<UR3ServiceMsg-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'joint_input) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UR3ServiceMsg-request>) istream)
  "Deserializes a message object of type '<UR3ServiceMsg-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'joint_input) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UR3ServiceMsg-request>)))
  "Returns string type for a service object of type '<UR3ServiceMsg-request>"
  "ur3_robotics/UR3ServiceMsgRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UR3ServiceMsg-request)))
  "Returns string type for a service object of type 'UR3ServiceMsg-request"
  "ur3_robotics/UR3ServiceMsgRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UR3ServiceMsg-request>)))
  "Returns md5sum for a message object of type '<UR3ServiceMsg-request>"
  "7ca54bd198e5048726b3fe77d5b5509c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UR3ServiceMsg-request)))
  "Returns md5sum for a message object of type 'UR3ServiceMsg-request"
  "7ca54bd198e5048726b3fe77d5b5509c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UR3ServiceMsg-request>)))
  "Returns full string definition for message of type '<UR3ServiceMsg-request>"
  (cl:format cl:nil "UR3Joints joint_input~%~%================================================================================~%MSG: ur3_robotics/UR3Joints~%float64 joint_base~%float64 joint_shoulder~%float64 joint_elbow~%float64 joint_wrist1~%float64 joint_wrist2~%float64 joint_wrist3~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UR3ServiceMsg-request)))
  "Returns full string definition for message of type 'UR3ServiceMsg-request"
  (cl:format cl:nil "UR3Joints joint_input~%~%================================================================================~%MSG: ur3_robotics/UR3Joints~%float64 joint_base~%float64 joint_shoulder~%float64 joint_elbow~%float64 joint_wrist1~%float64 joint_wrist2~%float64 joint_wrist3~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UR3ServiceMsg-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'joint_input))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UR3ServiceMsg-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UR3ServiceMsg-request
    (cl:cons ':joint_input (joint_input msg))
))
;//! \htmlinclude UR3ServiceMsg-response.msg.html

(cl:defclass <UR3ServiceMsg-response> (roslisp-msg-protocol:ros-message)
  ((trajectories
    :reader trajectories
    :initarg :trajectories
    :type (cl:vector ur3_robotics-msg:UR3Joints)
   :initform (cl:make-array 0 :element-type 'ur3_robotics-msg:UR3Joints :initial-element (cl:make-instance 'ur3_robotics-msg:UR3Joints))))
)

(cl:defclass UR3ServiceMsg-response (<UR3ServiceMsg-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UR3ServiceMsg-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UR3ServiceMsg-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur3_robotics-srv:<UR3ServiceMsg-response> is deprecated: use ur3_robotics-srv:UR3ServiceMsg-response instead.")))

(cl:ensure-generic-function 'trajectories-val :lambda-list '(m))
(cl:defmethod trajectories-val ((m <UR3ServiceMsg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3_robotics-srv:trajectories-val is deprecated.  Use ur3_robotics-srv:trajectories instead.")
  (trajectories m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UR3ServiceMsg-response>) ostream)
  "Serializes a message object of type '<UR3ServiceMsg-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'trajectories))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'trajectories))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UR3ServiceMsg-response>) istream)
  "Deserializes a message object of type '<UR3ServiceMsg-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'trajectories) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'trajectories)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ur3_robotics-msg:UR3Joints))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UR3ServiceMsg-response>)))
  "Returns string type for a service object of type '<UR3ServiceMsg-response>"
  "ur3_robotics/UR3ServiceMsgResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UR3ServiceMsg-response)))
  "Returns string type for a service object of type 'UR3ServiceMsg-response"
  "ur3_robotics/UR3ServiceMsgResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UR3ServiceMsg-response>)))
  "Returns md5sum for a message object of type '<UR3ServiceMsg-response>"
  "7ca54bd198e5048726b3fe77d5b5509c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UR3ServiceMsg-response)))
  "Returns md5sum for a message object of type 'UR3ServiceMsg-response"
  "7ca54bd198e5048726b3fe77d5b5509c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UR3ServiceMsg-response>)))
  "Returns full string definition for message of type '<UR3ServiceMsg-response>"
  (cl:format cl:nil "UR3Joints[] trajectories~%~%~%================================================================================~%MSG: ur3_robotics/UR3Joints~%float64 joint_base~%float64 joint_shoulder~%float64 joint_elbow~%float64 joint_wrist1~%float64 joint_wrist2~%float64 joint_wrist3~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UR3ServiceMsg-response)))
  "Returns full string definition for message of type 'UR3ServiceMsg-response"
  (cl:format cl:nil "UR3Joints[] trajectories~%~%~%================================================================================~%MSG: ur3_robotics/UR3Joints~%float64 joint_base~%float64 joint_shoulder~%float64 joint_elbow~%float64 joint_wrist1~%float64 joint_wrist2~%float64 joint_wrist3~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UR3ServiceMsg-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'trajectories) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UR3ServiceMsg-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UR3ServiceMsg-response
    (cl:cons ':trajectories (trajectories msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UR3ServiceMsg)))
  'UR3ServiceMsg-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UR3ServiceMsg)))
  'UR3ServiceMsg-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UR3ServiceMsg)))
  "Returns string type for a service object of type '<UR3ServiceMsg>"
  "ur3_robotics/UR3ServiceMsg")