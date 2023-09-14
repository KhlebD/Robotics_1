;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::ReqMsg)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'ReqMsg (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::REQMSG")
  (make-package "BEGINNER_TUTORIALS::REQMSG"))

(in-package "ROS")
;;//! \htmlinclude ReqMsg.msg.html


(defclass beginner_tutorials::ReqMsg
  :super ros::object
  :slots (_info ))

(defmethod beginner_tutorials::ReqMsg
  (:init
   (&key
    ((:info __info) "")
    )
   (send-super :init)
   (setq _info (string __info))
   self)
  (:info
   (&optional __info)
   (if __info (setq _info __info)) _info)
  (:serialization-length
   ()
   (+
    ;; string _info
    4 (length _info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _info
       (write-long (length _info) s) (princ _info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get beginner_tutorials::ReqMsg :md5sum-) "c10fc26d5cca9a4b9114f5fc5dea9570")
(setf (get beginner_tutorials::ReqMsg :datatype-) "beginner_tutorials/ReqMsg")
(setf (get beginner_tutorials::ReqMsg :definition-)
      "string info
")



(provide :beginner_tutorials/ReqMsg "c10fc26d5cca9a4b9114f5fc5dea9570")


