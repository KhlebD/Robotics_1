;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::turtle_history)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'turtle_history (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::TURTLE_HISTORY")
  (make-package "BEGINNER_TUTORIALS::TURTLE_HISTORY"))
(unless (find-package "BEGINNER_TUTORIALS::TURTLE_HISTORYREQUEST")
  (make-package "BEGINNER_TUTORIALS::TURTLE_HISTORYREQUEST"))
(unless (find-package "BEGINNER_TUTORIALS::TURTLE_HISTORYRESPONSE")
  (make-package "BEGINNER_TUTORIALS::TURTLE_HISTORYRESPONSE"))

(in-package "ROS")





(defclass beginner_tutorials::turtle_historyRequest
  :super ros::object
  :slots (_info ))

(defmethod beginner_tutorials::turtle_historyRequest
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

(defclass beginner_tutorials::turtle_historyResponse
  :super ros::object
  :slots (_result ))

(defmethod beginner_tutorials::turtle_historyResponse
  (:init
   (&key
    ((:result __result) "")
    )
   (send-super :init)
   (setq _result (string __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass beginner_tutorials::turtle_history
  :super ros::object
  :slots ())

(setf (get beginner_tutorials::turtle_history :md5sum-) "61e5a00050969050ae93076978354c3f")
(setf (get beginner_tutorials::turtle_history :datatype-) "beginner_tutorials/turtle_history")
(setf (get beginner_tutorials::turtle_history :request) beginner_tutorials::turtle_historyRequest)
(setf (get beginner_tutorials::turtle_history :response) beginner_tutorials::turtle_historyResponse)

(defmethod beginner_tutorials::turtle_historyRequest
  (:response () (instance beginner_tutorials::turtle_historyResponse :init)))

(setf (get beginner_tutorials::turtle_historyRequest :md5sum-) "61e5a00050969050ae93076978354c3f")
(setf (get beginner_tutorials::turtle_historyRequest :datatype-) "beginner_tutorials/turtle_historyRequest")
(setf (get beginner_tutorials::turtle_historyRequest :definition-)
      "string info
---
string result
")

(setf (get beginner_tutorials::turtle_historyResponse :md5sum-) "61e5a00050969050ae93076978354c3f")
(setf (get beginner_tutorials::turtle_historyResponse :datatype-) "beginner_tutorials/turtle_historyResponse")
(setf (get beginner_tutorials::turtle_historyResponse :definition-)
      "string info
---
string result
")



(provide :beginner_tutorials/turtle_history "61e5a00050969050ae93076978354c3f")


