
(cl:in-package :asdf)

(defsystem "beginner_tutorials-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "turtle_history" :depends-on ("_package_turtle_history"))
    (:file "_package_turtle_history" :depends-on ("_package"))
    (:file "turtle_letters" :depends-on ("_package_turtle_letters"))
    (:file "_package_turtle_letters" :depends-on ("_package"))
  ))