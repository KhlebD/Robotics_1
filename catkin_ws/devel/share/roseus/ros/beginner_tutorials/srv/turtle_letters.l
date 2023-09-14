;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::turtle_letters)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'turtle_letters (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::TURTLE_LETTERS")
  (make-package "BEGINNER_TUTORIALS::TURTLE_LETTERS"))
(unless (find-package "BEGINNER_TUTORIALS::TURTLE_LETTERSREQUEST")
  (make-package "BEGINNER_TUTORIALS::TURTLE_LETTERSREQUEST"))
(unless (find-package "BEGINNER_TUTORIALS::TURTLE_LETTERSRESPONSE")
  (make-package "BEGINNER_TUTORIALS::TURTLE_LETTERSRESPONSE"))

(in-package "ROS")





(defclass beginner_tutorials::turtle_lettersRequest
  :super ros::object
  :slots (_location_x _location_y _color _letter ))

(defmethod beginner_tutorials::turtle_lettersRequest
  (:init
   (&key
    ((:location_x __location_x) 0)
    ((:location_y __location_y) 0)
    ((:color __color) "")
    ((:letter __letter) 0)
    )
   (send-super :init)
   (setq _location_x (round __location_x))
   (setq _location_y (round __location_y))
   (setq _color (string __color))
   (setq _letter (round __letter))
   self)
  (:location_x
   (&optional __location_x)
   (if __location_x (setq _location_x __location_x)) _location_x)
  (:location_y
   (&optional __location_y)
   (if __location_y (setq _location_y __location_y)) _location_y)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:letter
   (&optional __letter)
   (if __letter (setq _letter __letter)) _letter)
  (:serialization-length
   ()
   (+
    ;; int64 _location_x
    8
    ;; int64 _location_y
    8
    ;; string _color
    4 (length _color)
    ;; char _letter
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _location_x
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _location_x (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _location_x) (= (length (_location_x . bv)) 2)) ;; bignum
              (write-long (ash (elt (_location_x . bv) 0) 0) s)
              (write-long (ash (elt (_location_x . bv) 1) -1) s))
             ((and (class _location_x) (= (length (_location_x . bv)) 1)) ;; big1
              (write-long (elt (_location_x . bv) 0) s)
              (write-long (if (>= _location_x 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _location_x s)(write-long (if (>= _location_x 0) 0 #xffffffff) s)))
     ;; int64 _location_y
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _location_y (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _location_y) (= (length (_location_y . bv)) 2)) ;; bignum
              (write-long (ash (elt (_location_y . bv) 0) 0) s)
              (write-long (ash (elt (_location_y . bv) 1) -1) s))
             ((and (class _location_y) (= (length (_location_y . bv)) 1)) ;; big1
              (write-long (elt (_location_y . bv) 0) s)
              (write-long (if (>= _location_y 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _location_y s)(write-long (if (>= _location_y 0) 0 #xffffffff) s)))
     ;; string _color
       (write-long (length _color) s) (princ _color s)
     ;; char _letter
       (write-byte _letter s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _location_x
#+(or :alpha :irix6 :x86_64)
      (setf _location_x (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _location_x (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _location_y
#+(or :alpha :irix6 :x86_64)
      (setf _location_y (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _location_y (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _color
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _color (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; char _letter
     (setq _letter (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass beginner_tutorials::turtle_lettersResponse
  :super ros::object
  :slots (_result ))

(defmethod beginner_tutorials::turtle_lettersResponse
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

(defclass beginner_tutorials::turtle_letters
  :super ros::object
  :slots ())

(setf (get beginner_tutorials::turtle_letters :md5sum-) "f5f0130de4c436554e39ca1270e27617")
(setf (get beginner_tutorials::turtle_letters :datatype-) "beginner_tutorials/turtle_letters")
(setf (get beginner_tutorials::turtle_letters :request) beginner_tutorials::turtle_lettersRequest)
(setf (get beginner_tutorials::turtle_letters :response) beginner_tutorials::turtle_lettersResponse)

(defmethod beginner_tutorials::turtle_lettersRequest
  (:response () (instance beginner_tutorials::turtle_lettersResponse :init)))

(setf (get beginner_tutorials::turtle_lettersRequest :md5sum-) "f5f0130de4c436554e39ca1270e27617")
(setf (get beginner_tutorials::turtle_lettersRequest :datatype-) "beginner_tutorials/turtle_lettersRequest")
(setf (get beginner_tutorials::turtle_lettersRequest :definition-)
      "int64 location_x
int64 location_y
string color
char letter

---

string result


")

(setf (get beginner_tutorials::turtle_lettersResponse :md5sum-) "f5f0130de4c436554e39ca1270e27617")
(setf (get beginner_tutorials::turtle_lettersResponse :datatype-) "beginner_tutorials/turtle_lettersResponse")
(setf (get beginner_tutorials::turtle_lettersResponse :definition-)
      "int64 location_x
int64 location_y
string color
char letter

---

string result


")



(provide :beginner_tutorials/turtle_letters "f5f0130de4c436554e39ca1270e27617")


