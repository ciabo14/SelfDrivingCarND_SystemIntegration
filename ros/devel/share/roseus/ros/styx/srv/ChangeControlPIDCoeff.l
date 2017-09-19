;; Auto-generated. Do not edit!


(when (boundp 'styx::ChangeControlPIDCoeff)
  (if (not (find-package "STYX"))
    (make-package "STYX"))
  (shadow 'ChangeControlPIDCoeff (find-package "STYX")))
(unless (find-package "STYX::CHANGECONTROLPIDCOEFF")
  (make-package "STYX::CHANGECONTROLPIDCOEFF"))
(unless (find-package "STYX::CHANGECONTROLPIDCOEFFREQUEST")
  (make-package "STYX::CHANGECONTROLPIDCOEFFREQUEST"))
(unless (find-package "STYX::CHANGECONTROLPIDCOEFFRESPONSE")
  (make-package "STYX::CHANGECONTROLPIDCOEFFRESPONSE"))

(in-package "ROS")





(defclass styx::ChangeControlPIDCoeffRequest
  :super ros::object
  :slots (_pidType _Kp _Ki _Kd ))

(defmethod styx::ChangeControlPIDCoeffRequest
  (:init
   (&key
    ((:pidType __pidType) "")
    ((:Kp __Kp) 0.0)
    ((:Ki __Ki) 0.0)
    ((:Kd __Kd) 0.0)
    )
   (send-super :init)
   (setq _pidType (string __pidType))
   (setq _Kp (float __Kp))
   (setq _Ki (float __Ki))
   (setq _Kd (float __Kd))
   self)
  (:pidType
   (&optional __pidType)
   (if __pidType (setq _pidType __pidType)) _pidType)
  (:Kp
   (&optional __Kp)
   (if __Kp (setq _Kp __Kp)) _Kp)
  (:Ki
   (&optional __Ki)
   (if __Ki (setq _Ki __Ki)) _Ki)
  (:Kd
   (&optional __Kd)
   (if __Kd (setq _Kd __Kd)) _Kd)
  (:serialization-length
   ()
   (+
    ;; string _pidType
    4 (length _pidType)
    ;; float64 _Kp
    8
    ;; float64 _Ki
    8
    ;; float64 _Kd
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _pidType
       (write-long (length _pidType) s) (princ _pidType s)
     ;; float64 _Kp
       (sys::poke _Kp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Ki
       (sys::poke _Ki (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Kd
       (sys::poke _Kd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _pidType
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pidType (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _Kp
     (setq _Kp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Ki
     (setq _Ki (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Kd
     (setq _Kd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass styx::ChangeControlPIDCoeffResponse
  :super ros::object
  :slots (_feedback ))

(defmethod styx::ChangeControlPIDCoeffResponse
  (:init
   (&key
    ((:feedback __feedback) nil)
    )
   (send-super :init)
   (setq _feedback __feedback)
   self)
  (:feedback
   (&optional __feedback)
   (if __feedback (setq _feedback __feedback)) _feedback)
  (:serialization-length
   ()
   (+
    ;; bool _feedback
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _feedback
       (if _feedback (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _feedback
     (setq _feedback (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass styx::ChangeControlPIDCoeff
  :super ros::object
  :slots ())

(setf (get styx::ChangeControlPIDCoeff :md5sum-) "e613536b67df3009b4780803f4d01553")
(setf (get styx::ChangeControlPIDCoeff :datatype-) "styx/ChangeControlPIDCoeff")
(setf (get styx::ChangeControlPIDCoeff :request) styx::ChangeControlPIDCoeffRequest)
(setf (get styx::ChangeControlPIDCoeff :response) styx::ChangeControlPIDCoeffResponse)

(defmethod styx::ChangeControlPIDCoeffRequest
  (:response () (instance styx::ChangeControlPIDCoeffResponse :init)))

(setf (get styx::ChangeControlPIDCoeffRequest :md5sum-) "e613536b67df3009b4780803f4d01553")
(setf (get styx::ChangeControlPIDCoeffRequest :datatype-) "styx/ChangeControlPIDCoeffRequest")
(setf (get styx::ChangeControlPIDCoeffRequest :definition-)
      "string pidType
float64 Kp
float64 Ki
float64 Kd
---
bool feedback
")

(setf (get styx::ChangeControlPIDCoeffResponse :md5sum-) "e613536b67df3009b4780803f4d01553")
(setf (get styx::ChangeControlPIDCoeffResponse :datatype-) "styx/ChangeControlPIDCoeffResponse")
(setf (get styx::ChangeControlPIDCoeffResponse :definition-)
      "string pidType
float64 Kp
float64 Ki
float64 Kd
---
bool feedback
")



(provide :styx/ChangeControlPIDCoeff "e613536b67df3009b4780803f4d01553")


