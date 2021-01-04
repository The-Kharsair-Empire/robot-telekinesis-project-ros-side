;; Auto-generated. Do not edit!


(when (boundp 'ur3_robotics::UR3ServiceMsg)
  (if (not (find-package "UR3_ROBOTICS"))
    (make-package "UR3_ROBOTICS"))
  (shadow 'UR3ServiceMsg (find-package "UR3_ROBOTICS")))
(unless (find-package "UR3_ROBOTICS::UR3SERVICEMSG")
  (make-package "UR3_ROBOTICS::UR3SERVICEMSG"))
(unless (find-package "UR3_ROBOTICS::UR3SERVICEMSGREQUEST")
  (make-package "UR3_ROBOTICS::UR3SERVICEMSGREQUEST"))
(unless (find-package "UR3_ROBOTICS::UR3SERVICEMSGRESPONSE")
  (make-package "UR3_ROBOTICS::UR3SERVICEMSGRESPONSE"))

(in-package "ROS")





(defclass ur3_robotics::UR3ServiceMsgRequest
  :super ros::object
  :slots (_joint_input ))

(defmethod ur3_robotics::UR3ServiceMsgRequest
  (:init
   (&key
    ((:joint_input __joint_input) (instance ur3_robotics::UR3Joints :init))
    )
   (send-super :init)
   (setq _joint_input __joint_input)
   self)
  (:joint_input
   (&rest __joint_input)
   (if (keywordp (car __joint_input))
       (send* _joint_input __joint_input)
     (progn
       (if __joint_input (setq _joint_input (car __joint_input)))
       _joint_input)))
  (:serialization-length
   ()
   (+
    ;; ur3_robotics/UR3Joints _joint_input
    (send _joint_input :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ur3_robotics/UR3Joints _joint_input
       (send _joint_input :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ur3_robotics/UR3Joints _joint_input
     (send _joint_input :deserialize buf ptr-) (incf ptr- (send _joint_input :serialization-length))
   ;;
   self)
  )

(defclass ur3_robotics::UR3ServiceMsgResponse
  :super ros::object
  :slots (_trajectories ))

(defmethod ur3_robotics::UR3ServiceMsgResponse
  (:init
   (&key
    ((:trajectories __trajectories) (let (r) (dotimes (i 0) (push (instance ur3_robotics::UR3Joints :init) r)) r))
    )
   (send-super :init)
   (setq _trajectories __trajectories)
   self)
  (:trajectories
   (&rest __trajectories)
   (if (keywordp (car __trajectories))
       (send* _trajectories __trajectories)
     (progn
       (if __trajectories (setq _trajectories (car __trajectories)))
       _trajectories)))
  (:serialization-length
   ()
   (+
    ;; ur3_robotics/UR3Joints[] _trajectories
    (apply #'+ (send-all _trajectories :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ur3_robotics/UR3Joints[] _trajectories
     (write-long (length _trajectories) s)
     (dolist (elem _trajectories)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ur3_robotics/UR3Joints[] _trajectories
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectories (let (r) (dotimes (i n) (push (instance ur3_robotics::UR3Joints :init) r)) r))
     (dolist (elem- _trajectories)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass ur3_robotics::UR3ServiceMsg
  :super ros::object
  :slots ())

(setf (get ur3_robotics::UR3ServiceMsg :md5sum-) "7ca54bd198e5048726b3fe77d5b5509c")
(setf (get ur3_robotics::UR3ServiceMsg :datatype-) "ur3_robotics/UR3ServiceMsg")
(setf (get ur3_robotics::UR3ServiceMsg :request) ur3_robotics::UR3ServiceMsgRequest)
(setf (get ur3_robotics::UR3ServiceMsg :response) ur3_robotics::UR3ServiceMsgResponse)

(defmethod ur3_robotics::UR3ServiceMsgRequest
  (:response () (instance ur3_robotics::UR3ServiceMsgResponse :init)))

(setf (get ur3_robotics::UR3ServiceMsgRequest :md5sum-) "7ca54bd198e5048726b3fe77d5b5509c")
(setf (get ur3_robotics::UR3ServiceMsgRequest :datatype-) "ur3_robotics/UR3ServiceMsgRequest")
(setf (get ur3_robotics::UR3ServiceMsgRequest :definition-)
      "UR3Joints joint_input

================================================================================
MSG: ur3_robotics/UR3Joints
float64 joint_base
float64 joint_shoulder
float64 joint_elbow
float64 joint_wrist1
float64 joint_wrist2
float64 joint_wrist3

---
UR3Joints[] trajectories


================================================================================
MSG: ur3_robotics/UR3Joints
float64 joint_base
float64 joint_shoulder
float64 joint_elbow
float64 joint_wrist1
float64 joint_wrist2
float64 joint_wrist3

")

(setf (get ur3_robotics::UR3ServiceMsgResponse :md5sum-) "7ca54bd198e5048726b3fe77d5b5509c")
(setf (get ur3_robotics::UR3ServiceMsgResponse :datatype-) "ur3_robotics/UR3ServiceMsgResponse")
(setf (get ur3_robotics::UR3ServiceMsgResponse :definition-)
      "UR3Joints joint_input

================================================================================
MSG: ur3_robotics/UR3Joints
float64 joint_base
float64 joint_shoulder
float64 joint_elbow
float64 joint_wrist1
float64 joint_wrist2
float64 joint_wrist3

---
UR3Joints[] trajectories


================================================================================
MSG: ur3_robotics/UR3Joints
float64 joint_base
float64 joint_shoulder
float64 joint_elbow
float64 joint_wrist1
float64 joint_wrist2
float64 joint_wrist3

")



(provide :ur3_robotics/UR3ServiceMsg "7ca54bd198e5048726b3fe77d5b5509c")


