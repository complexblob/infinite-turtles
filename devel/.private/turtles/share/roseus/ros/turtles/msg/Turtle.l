;; Auto-generated. Do not edit!


(when (boundp 'turtles::Turtle)
  (if (not (find-package "TURTLES"))
    (make-package "TURTLES"))
  (shadow 'Turtle (find-package "TURTLES")))
(unless (find-package "TURTLES::TURTLE")
  (make-package "TURTLES::TURTLE"))

(in-package "ROS")
;;//! \htmlinclude Turtle.msg.html


(defclass turtles::Turtle
  :super ros::object
  :slots (_id _name _quality ))

(defmethod turtles::Turtle
  (:init
   (&key
    ((:id __id) 0)
    ((:name __name) "")
    ((:quality __quality) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _name (string __name))
   (setq _quality (round __quality))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:quality
   (&optional __quality)
   (if __quality (setq _quality __quality)) _quality)
  (:serialization-length
   ()
   (+
    ;; int16 _id
    2
    ;; string _name
    4 (length _name)
    ;; int8 _quality
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _id
       (write-word _id s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int8 _quality
       (write-byte _quality s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _id
     (setq _id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _quality
     (setq _quality (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _quality 127) (setq _quality (- _quality 256)))
   ;;
   self)
  )

(setf (get turtles::Turtle :md5sum-) "52e5c16d048760fa40373372233ace76")
(setf (get turtles::Turtle :datatype-) "turtles/Turtle")
(setf (get turtles::Turtle :definition-)
      "int16 id
string name
int8 quality

")



(provide :turtles/Turtle "52e5c16d048760fa40373372233ace76")


