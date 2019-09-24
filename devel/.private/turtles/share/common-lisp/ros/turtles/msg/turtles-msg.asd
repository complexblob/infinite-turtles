
(cl:in-package :asdf)

(defsystem "turtles-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Turtle" :depends-on ("_package_Turtle"))
    (:file "_package_Turtle" :depends-on ("_package"))
  ))