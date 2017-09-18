;; Auto-generated. Do not edit!


(when (boundp 'styx_msgs::ChangeTargetSpeed)
  (if (not (find-package "STYX_MSGS"))
    (make-package "STYX_MSGS"))
  (shadow 'ChangeTargetSpeed (find-package "STYX_MSGS")))
(unless (find-package "STYX_MSGS::CHANGETARGETSPEED")
  (make-package "STYX_MSGS::CHANGETARGETSPEED"))
(unless (find-package "STYX_MSGS::CHANGETARGETSPEEDREQUEST")
  (make-package "STYX_MSGS::CHANGETARGETSPEEDREQUEST"))
(unless (find-package "STYX_MSGS::CHANGETARGETSPEEDRESPONSE")
  (make-package "STYX_MSGS::CHANGETARGETSPEEDRESPONSE"))

(in-package "ROS")





(defclass styx_msgs::ChangeTargetSpeedRequest
  :super ros::object
  :slots (_target_speed ))

(defmethod styx_msgs::ChangeTargetSpeedRequest
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

(defclass styx_msgs::ChangeTargetSpeedResponse
  :super ros::object
  :slots (_feedback ))

(defmethod styx_msgs::ChangeTargetSpeedResponse
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

(defclass styx_msgs::ChangeTargetSpeed
  :super ros::object
  :slots ())

(setf (get styx_msgs::ChangeTargetSpeed :md5sum-) "fea0a386a47268810258a0f8d07589cc")
(setf (get styx_msgs::ChangeTargetSpeed :datatype-) "styx_msgs/ChangeTargetSpeed")
(setf (get styx_msgs::ChangeTargetSpeed :request) styx_msgs::ChangeTargetSpeedRequest)
(setf (get styx_msgs::ChangeTargetSpeed :response) styx_msgs::ChangeTargetSpeedResponse)

(defmethod styx_msgs::ChangeTargetSpeedRequest
  (:response () (instance styx_msgs::ChangeTargetSpeedResponse :init)))

(setf (get styx_msgs::ChangeTargetSpeedRequest :md5sum-) "fea0a386a47268810258a0f8d07589cc")
(setf (get styx_msgs::ChangeTargetSpeedRequest :datatype-) "styx_msgs/ChangeTargetSpeedRequest")
(setf (get styx_msgs::ChangeTargetSpeedRequest :definition-)
      "float64 target_speed
---
bool feedback
")

(setf (get styx_msgs::ChangeTargetSpeedResponse :md5sum-) "fea0a386a47268810258a0f8d07589cc")
(setf (get styx_msgs::ChangeTargetSpeedResponse :datatype-) "styx_msgs/ChangeTargetSpeedResponse")
(setf (get styx_msgs::ChangeTargetSpeedResponse :definition-)
      "float64 target_speed
---
bool feedback
")



(provide :styx_msgs/ChangeTargetSpeed "fea0a386a47268810258a0f8d07589cc")


