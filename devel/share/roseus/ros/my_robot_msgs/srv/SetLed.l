;; Auto-generated. Do not edit!


(when (boundp 'my_robot_msgs::SetLed)
  (if (not (find-package "MY_ROBOT_MSGS"))
    (make-package "MY_ROBOT_MSGS"))
  (shadow 'SetLed (find-package "MY_ROBOT_MSGS")))
(unless (find-package "MY_ROBOT_MSGS::SETLED")
  (make-package "MY_ROBOT_MSGS::SETLED"))
(unless (find-package "MY_ROBOT_MSGS::SETLEDREQUEST")
  (make-package "MY_ROBOT_MSGS::SETLEDREQUEST"))
(unless (find-package "MY_ROBOT_MSGS::SETLEDRESPONSE")
  (make-package "MY_ROBOT_MSGS::SETLEDRESPONSE"))

(in-package "ROS")





(defclass my_robot_msgs::SetLedRequest
  :super ros::object
  :slots (_num _state ))

(defmethod my_robot_msgs::SetLedRequest
  (:init
   (&key
    ((:num __num) 0)
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _num (round __num))
   (setq _state (round __state))
   self)
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; int32 _num
    4
    ;; int32 _state
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _num
       (write-long _num s)
     ;; int32 _state
       (write-long _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _num
     (setq _num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _state
     (setq _state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass my_robot_msgs::SetLedResponse
  :super ros::object
  :slots (_success ))

(defmethod my_robot_msgs::SetLedResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass my_robot_msgs::SetLed
  :super ros::object
  :slots ())

(setf (get my_robot_msgs::SetLed :md5sum-) "a7baede22ace61d590317cb5b8c3838c")
(setf (get my_robot_msgs::SetLed :datatype-) "my_robot_msgs/SetLed")
(setf (get my_robot_msgs::SetLed :request) my_robot_msgs::SetLedRequest)
(setf (get my_robot_msgs::SetLed :response) my_robot_msgs::SetLedResponse)

(defmethod my_robot_msgs::SetLedRequest
  (:response () (instance my_robot_msgs::SetLedResponse :init)))

(setf (get my_robot_msgs::SetLedRequest :md5sum-) "a7baede22ace61d590317cb5b8c3838c")
(setf (get my_robot_msgs::SetLedRequest :datatype-) "my_robot_msgs/SetLedRequest")
(setf (get my_robot_msgs::SetLedRequest :definition-)
      "int32 num
int32 state
---
bool success
")

(setf (get my_robot_msgs::SetLedResponse :md5sum-) "a7baede22ace61d590317cb5b8c3838c")
(setf (get my_robot_msgs::SetLedResponse :datatype-) "my_robot_msgs/SetLedResponse")
(setf (get my_robot_msgs::SetLedResponse :definition-)
      "int32 num
int32 state
---
bool success
")



(provide :my_robot_msgs/SetLed "a7baede22ace61d590317cb5b8c3838c")


