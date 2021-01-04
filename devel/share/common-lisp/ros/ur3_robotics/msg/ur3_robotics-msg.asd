
(cl:in-package :asdf)

(defsystem "ur3_robotics-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "UR3Joints" :depends-on ("_package_UR3Joints"))
    (:file "_package_UR3Joints" :depends-on ("_package"))
  ))