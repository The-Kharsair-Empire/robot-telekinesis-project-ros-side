; Auto-generated. Do not edit!


(cl:in-package ur3_robotics-msg)


;//! \htmlinclude UR3Joints.msg.html

(cl:defclass <UR3Joints> (roslisp-msg-protocol:ros-message)
  ((joint_base
    :reader joint_base
    :initarg :joint_base
    :type cl:float
    :initform 0.0)
   (joint_shoulder
    :reader joint_shoulder
    :initarg :joint_shoulder
    :type cl:float
    :initform 0.0)
   (joint_elbow
    :reader joint_elbow
    :initarg :joint_elbow
    :type cl:float
    :initform 0.0)
   (joint_wrist1
    :reader joint_wrist1
    :initarg :joint_wrist1
    :type cl:float
    :initform 0.0)
   (joint_wrist2
    :reader joint_wrist2
    :initarg :joint_wrist2
    :type cl:float
    :initform 0.0)
   (joint_wrist3
    :reader joint_wrist3
    :initarg :joint_wrist3
    :type cl:float
    :initform 0.0))
)

(cl:defclass UR3Joints (<UR3Joints>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UR3Joints>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UR3Joints)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur3_robotics-msg:<UR3Joints> is deprecated: use ur3_robotics-msg:UR3Joints instead.")))

(cl:ensure-generic-function 'joint_base-val :lambda-list '(m))
(cl:defmethod joint_base-val ((m <UR3Joints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3_robotics-msg:joint_base-val is deprecated.  Use ur3_robotics-msg:joint_base instead.")
  (joint_base m))

(cl:ensure-generic-function 'joint_shoulder-val :lambda-list '(m))
(cl:defmethod joint_shoulder-val ((m <UR3Joints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3_robotics-msg:joint_shoulder-val is deprecated.  Use ur3_robotics-msg:joint_shoulder instead.")
  (joint_shoulder m))

(cl:ensure-generic-function 'joint_elbow-val :lambda-list '(m))
(cl:defmethod joint_elbow-val ((m <UR3Joints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3_robotics-msg:joint_elbow-val is deprecated.  Use ur3_robotics-msg:joint_elbow instead.")
  (joint_elbow m))

(cl:ensure-generic-function 'joint_wrist1-val :lambda-list '(m))
(cl:defmethod joint_wrist1-val ((m <UR3Joints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3_robotics-msg:joint_wrist1-val is deprecated.  Use ur3_robotics-msg:joint_wrist1 instead.")
  (joint_wrist1 m))

(cl:ensure-generic-function 'joint_wrist2-val :lambda-list '(m))
(cl:defmethod joint_wrist2-val ((m <UR3Joints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3_robotics-msg:joint_wrist2-val is deprecated.  Use ur3_robotics-msg:joint_wrist2 instead.")
  (joint_wrist2 m))

(cl:ensure-generic-function 'joint_wrist3-val :lambda-list '(m))
(cl:defmethod joint_wrist3-val ((m <UR3Joints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3_robotics-msg:joint_wrist3-val is deprecated.  Use ur3_robotics-msg:joint_wrist3 instead.")
  (joint_wrist3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UR3Joints>) ostream)
  "Serializes a message object of type '<UR3Joints>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joint_base))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joint_shoulder))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joint_elbow))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joint_wrist1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joint_wrist2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joint_wrist3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UR3Joints>) istream)
  "Deserializes a message object of type '<UR3Joints>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_base) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_shoulder) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_elbow) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_wrist1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_wrist2) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_wrist3) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UR3Joints>)))
  "Returns string type for a message object of type '<UR3Joints>"
  "ur3_robotics/UR3Joints")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UR3Joints)))
  "Returns string type for a message object of type 'UR3Joints"
  "ur3_robotics/UR3Joints")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UR3Joints>)))
  "Returns md5sum for a message object of type '<UR3Joints>"
  "5ff4378c889479c886a29cb017cf9cde")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UR3Joints)))
  "Returns md5sum for a message object of type 'UR3Joints"
  "5ff4378c889479c886a29cb017cf9cde")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UR3Joints>)))
  "Returns full string definition for message of type '<UR3Joints>"
  (cl:format cl:nil "float64 joint_base~%float64 joint_shoulder~%float64 joint_elbow~%float64 joint_wrist1~%float64 joint_wrist2~%float64 joint_wrist3~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UR3Joints)))
  "Returns full string definition for message of type 'UR3Joints"
  (cl:format cl:nil "float64 joint_base~%float64 joint_shoulder~%float64 joint_elbow~%float64 joint_wrist1~%float64 joint_wrist2~%float64 joint_wrist3~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UR3Joints>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UR3Joints>))
  "Converts a ROS message object to a list"
  (cl:list 'UR3Joints
    (cl:cons ':joint_base (joint_base msg))
    (cl:cons ':joint_shoulder (joint_shoulder msg))
    (cl:cons ':joint_elbow (joint_elbow msg))
    (cl:cons ':joint_wrist1 (joint_wrist1 msg))
    (cl:cons ':joint_wrist2 (joint_wrist2 msg))
    (cl:cons ':joint_wrist3 (joint_wrist3 msg))
))
