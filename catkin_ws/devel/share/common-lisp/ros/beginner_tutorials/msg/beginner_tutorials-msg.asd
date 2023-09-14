
(cl:in-package :asdf)

(defsystem "beginner_tutorials-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ReqMsg" :depends-on ("_package_ReqMsg"))
    (:file "_package_ReqMsg" :depends-on ("_package"))
  ))