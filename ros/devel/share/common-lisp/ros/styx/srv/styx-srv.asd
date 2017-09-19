
(cl:in-package :asdf)

(defsystem "styx-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ChangeControlPIDCoeff" :depends-on ("_package_ChangeControlPIDCoeff"))
    (:file "_package_ChangeControlPIDCoeff" :depends-on ("_package"))
    (:file "ChangeTargetSpeed" :depends-on ("_package_ChangeTargetSpeed"))
    (:file "_package_ChangeTargetSpeed" :depends-on ("_package"))
  ))