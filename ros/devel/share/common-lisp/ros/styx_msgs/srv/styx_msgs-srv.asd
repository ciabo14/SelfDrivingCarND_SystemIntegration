
(cl:in-package :asdf)

(defsystem "styx_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ChangeTargetSpeed" :depends-on ("_package_ChangeTargetSpeed"))
    (:file "_package_ChangeTargetSpeed" :depends-on ("_package"))
  ))