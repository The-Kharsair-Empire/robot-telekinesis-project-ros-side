;; Auto-generated. Do not edit!


(when (boundp 'ur3_robotics::UR3Joints)
  (if (not (find-package "UR3_ROBOTICS"))
    (make-package "UR3_ROBOTICS"))
  (shadow 'UR3Joints (find-package "UR3_ROBOTICS")))
(unless (find-package "UR3_ROBOTICS::UR3JOINTS")
  (make-package "UR3_ROBOTICS::UR3JOINTS"))

(in-package "ROS")
;;//! \htmlinclude UR3Joints.msg.html


(defclass ur3_robotics::UR3Joints
  :super ros::object
  :slots (_joint_base _joint_shoulder _joint_elbow _joint_wrist1 _joint_wrist2 _joint_wrist3 ))

(defmethod ur3_robotics::UR3Joints
  (:init
   (&key
    ((:joint_base __joint_base) 0.0)
    ((:joint_shoulder __joint_shoulder) 0.0)
    ((:joint_elbow __joint_elbow) 0.0)
    ((:joint_wrist1 __joint_wrist1) 0.0)
    ((:joint_wrist2 __joint_wrist2) 0.0)
    ((:joint_wrist3 __joint_wrist3) 0.0)
    )
   (send-super :init)
   (setq _joint_base (float __joint_base))
   (setq _joint_shoulder (float __joint_shoulder))
   (setq _joint_elbow (float __joint_elbow))
   (setq _joint_wrist1 (float __joint_wrist1))
   (setq _joint_wrist2 (float __joint_wrist2))
   (setq _joint_wrist3 (float __joint_wrist3))
   self)
  (:joint_base
   (&optional __joint_base)
   (if __joint_base (setq _joint_base __joint_base)) _joint_base)
  (:joint_shoulder
   (&optional __joint_shoulder)
   (if __joint_shoulder (setq _joint_shoulder __joint_shoulder)) _joint_shoulder)
  (:joint_elbow
   (&optional __joint_elbow)
   (if __joint_elbow (setq _joint_elbow __joint_elbow)) _joint_elbow)
  (:joint_wrist1
   (&optional __joint_wrist1)
   (if __joint_wrist1 (setq _joint_wrist1 __joint_wrist1)) _joint_wrist1)
  (:joint_wrist2
   (&optional __joint_wrist2)
   (if __joint_wrist2 (setq _joint_wrist2 __joint_wrist2)) _joint_wrist2)
  (:joint_wrist3
   (&optional __joint_wrist3)
   (if __joint_wrist3 (setq _joint_wrist3 __joint_wrist3)) _joint_wrist3)
  (:serialization-length
   ()
   (+
    ;; float64 _joint_base
    8
    ;; float64 _joint_shoulder
    8
    ;; float64 _joint_elbow
    8
    ;; float64 _joint_wrist1
    8
    ;; float64 _joint_wrist2
    8
    ;; float64 _joint_wrist3
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _joint_base
       (sys::poke _joint_base (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _joint_shoulder
       (sys::poke _joint_shoulder (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _joint_elbow
       (sys::poke _joint_elbow (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _joint_wrist1
       (sys::poke _joint_wrist1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _joint_wrist2
       (sys::poke _joint_wrist2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _joint_wrist3
       (sys::poke _joint_wrist3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _joint_base
     (setq _joint_base (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _joint_shoulder
     (setq _joint_shoulder (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _joint_elbow
     (setq _joint_elbow (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _joint_wrist1
     (setq _joint_wrist1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _joint_wrist2
     (setq _joint_wrist2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _joint_wrist3
     (setq _joint_wrist3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ur3_robotics::UR3Joints :md5sum-) "5ff4378c889479c886a29cb017cf9cde")
(setf (get ur3_robotics::UR3Joints :datatype-) "ur3_robotics/UR3Joints")
(setf (get ur3_robotics::UR3Joints :definition-)
      "float64 joint_base
float64 joint_shoulder
float64 joint_elbow
float64 joint_wrist1
float64 joint_wrist2
float64 joint_wrist3


")



(provide :ur3_robotics/UR3Joints "5ff4378c889479c886a29cb017cf9cde")


