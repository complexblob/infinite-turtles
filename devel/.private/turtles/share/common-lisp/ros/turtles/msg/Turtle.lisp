; Auto-generated. Do not edit!


(cl:in-package turtles-msg)


;//! \htmlinclude Turtle.msg.html

(cl:defclass <Turtle> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (quality
    :reader quality
    :initarg :quality
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Turtle (<Turtle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Turtle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Turtle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtles-msg:<Turtle> is deprecated: use turtles-msg:Turtle instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Turtle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtles-msg:id-val is deprecated.  Use turtles-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Turtle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtles-msg:name-val is deprecated.  Use turtles-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'quality-val :lambda-list '(m))
(cl:defmethod quality-val ((m <Turtle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtles-msg:quality-val is deprecated.  Use turtles-msg:quality instead.")
  (quality m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Turtle>) ostream)
  "Serializes a message object of type '<Turtle>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let* ((signed (cl:slot-value msg 'quality)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Turtle>) istream)
  "Deserializes a message object of type '<Turtle>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'quality) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Turtle>)))
  "Returns string type for a message object of type '<Turtle>"
  "turtles/Turtle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Turtle)))
  "Returns string type for a message object of type 'Turtle"
  "turtles/Turtle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Turtle>)))
  "Returns md5sum for a message object of type '<Turtle>"
  "52e5c16d048760fa40373372233ace76")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Turtle)))
  "Returns md5sum for a message object of type 'Turtle"
  "52e5c16d048760fa40373372233ace76")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Turtle>)))
  "Returns full string definition for message of type '<Turtle>"
  (cl:format cl:nil "int16 id~%string name~%int8 quality~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Turtle)))
  "Returns full string definition for message of type 'Turtle"
  (cl:format cl:nil "int16 id~%string name~%int8 quality~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Turtle>))
  (cl:+ 0
     2
     4 (cl:length (cl:slot-value msg 'name))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Turtle>))
  "Converts a ROS message object to a list"
  (cl:list 'Turtle
    (cl:cons ':id (id msg))
    (cl:cons ':name (name msg))
    (cl:cons ':quality (quality msg))
))
