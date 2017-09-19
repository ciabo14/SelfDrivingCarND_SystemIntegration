;; Auto-generated. Do not edit!


(when (boundp 'styx::ChangeTargetSpeed)
  (if (not (find-package "STYX"))
    (make-package "STYX"))
  (shadow 'ChangeTargetSpeed (find-package "STYX")))
(unless (find-package "STYX::CHANGETARGETSPEED")
  (make-package "STYX::CHANGETARGETSPEED"))
(unless (find-package "STYX::CHANGETARGETSPEEDREQUEST")
  (make-package "STYX::CHANGETARGETSPEEDREQUEST"))
(unless (find-package "STYX::CHANGETARGETSPEEDRESPONSE")
  (make-package "STYX::CHANGETARGETSPEEDRESPONSE"))

(in-package "ROS")





(defclass styx::ChangeTargetSpeedRequest
  :super ros::object
  :slots (_target_speed ))

(defmethod styx::ChangeTargetSpeedRequest
  (:init
   (&key
    ((:target_speed __target_speed) 0.0)
    )
   (send-super :init)
   (setq _target_speed (float __target_speed))
   self)
  (:target_speed
   (&optional __target_speed)
   (if __target_speed (setq _target_speed __target_speed)) _target_speed)
  (:serialization-length
   ()
   (+
    ;; float64 _target_speed
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _target_speed
       (sys::poke _target_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _target_speed
     (setq _target_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass styx::ChangeTargetSpeedResponse
  :super ros::object
  :slots (_feedback ))

(defmethod styx::ChangeTargetSpeedResponse
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

(defclass styx::ChangeTargetSpeed
  :super ros::object
  :slots ())

(setf (get styx::ChangeTargetSpeed :md5sum-) "fea0a386a47268810258a0f8d07589cc")
(setf (get styx::ChangeTargetSpeed :datatype-) "styx/ChangeTargetSpeed")
(setf (get styx::ChangeTargetSpeed :request) styx::ChangeTargetSpeedRequest)
(setf (get styx::ChangeTargetSpeed :response) styx::ChangeTargetSpeedResponse)

(defmethod styx::ChangeTargetSpeedRequest
  (:response () (instance styx::ChangeTargetSpeedResponse :init)))

(setf (get styx::ChangeTargetSpeedRequest :md5sum-) "fea0a386a47268810258a0f8d07589cc")
(setf (get styx::ChangeTargetSpeedRequest :datatype-) "styx/ChangeTargetSpeedRequest")
(setf (get styx::ChangeTargetSpeedRequest :definition-)
      "float64 target_speed
---
bool feedback
")

(setf (get styx::ChangeTargetSpeedResponse :md5sum-) "fea0a386a47268810258a0f8d07589cc")
(setf (get styx::ChangeTargetSpeedResponse :datatype-) "styx/ChangeTargetSpeedResponse")
(setf (get styx::ChangeTargetSpeedResponse :definition-)
      "float64 target_speed
---
bool feedback
")



(provide :styx/ChangeTargetSpeed "fea0a386a47268810258a0f8d07589cc")


