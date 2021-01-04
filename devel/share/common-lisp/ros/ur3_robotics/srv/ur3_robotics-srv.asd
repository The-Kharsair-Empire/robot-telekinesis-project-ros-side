
(cl:in-package :asdf)

(defsystem "ur3_robotics-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :ur3_robotics-msg
)
  :components ((:file "_package")
    (:file "UR3ServiceMsg" :depends-on ("_package_UR3ServiceMsg"))
    (:file "_package_UR3ServiceMsg" :depends-on ("_package"))
  ))