; Auto-generated. Do not edit!


(cl:in-package arbiter-msg)


;//! \htmlinclude frame.msg.html

(cl:defclass <frame> (roslisp-msg-protocol:ros-message)
  ((msg_id
    :reader msg_id
    :initarg :msg_id
    :type cl:integer
    :initform 0)
   (remote_request
    :reader remote_request
    :initarg :remote_request
    :type cl:boolean
    :initform cl:nil)
   (DLC
    :reader DLC
    :initarg :DLC
    :type cl:fixnum
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (CRC_seq
    :reader CRC_seq
    :initarg :CRC_seq
    :type cl:integer
    :initform 0)
   (ACK
    :reader ACK
    :initarg :ACK
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass frame (<frame>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <frame>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'frame)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arbiter-msg:<frame> is deprecated: use arbiter-msg:frame instead.")))

(cl:ensure-generic-function 'msg_id-val :lambda-list '(m))
(cl:defmethod msg_id-val ((m <frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arbiter-msg:msg_id-val is deprecated.  Use arbiter-msg:msg_id instead.")
  (msg_id m))

(cl:ensure-generic-function 'remote_request-val :lambda-list '(m))
(cl:defmethod remote_request-val ((m <frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arbiter-msg:remote_request-val is deprecated.  Use arbiter-msg:remote_request instead.")
  (remote_request m))

(cl:ensure-generic-function 'DLC-val :lambda-list '(m))
(cl:defmethod DLC-val ((m <frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arbiter-msg:DLC-val is deprecated.  Use arbiter-msg:DLC instead.")
  (DLC m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arbiter-msg:data-val is deprecated.  Use arbiter-msg:data instead.")
  (data m))

(cl:ensure-generic-function 'CRC_seq-val :lambda-list '(m))
(cl:defmethod CRC_seq-val ((m <frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arbiter-msg:CRC_seq-val is deprecated.  Use arbiter-msg:CRC_seq instead.")
  (CRC_seq m))

(cl:ensure-generic-function 'ACK-val :lambda-list '(m))
(cl:defmethod ACK-val ((m <frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arbiter-msg:ACK-val is deprecated.  Use arbiter-msg:ACK instead.")
  (ACK m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <frame>) ostream)
  "Serializes a message object of type '<frame>"
  (cl:let* ((signed (cl:slot-value msg 'msg_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'remote_request) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'DLC)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
  (cl:let* ((signed (cl:slot-value msg 'CRC_seq)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ACK) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <frame>) istream)
  "Deserializes a message object of type '<frame>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msg_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'remote_request) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'DLC) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CRC_seq) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'ACK) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<frame>)))
  "Returns string type for a message object of type '<frame>"
  "arbiter/frame")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'frame)))
  "Returns string type for a message object of type 'frame"
  "arbiter/frame")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<frame>)))
  "Returns md5sum for a message object of type '<frame>"
  "d76cf64e7d0d3743e5324ff510752d0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'frame)))
  "Returns md5sum for a message object of type 'frame"
  "d76cf64e7d0d3743e5324ff510752d0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<frame>)))
  "Returns full string definition for message of type '<frame>"
  (cl:format cl:nil "int32 msg_id~%bool remote_request~%int8 DLC~%uint8[] data~%int32 CRC_seq~%bool ACK~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'frame)))
  "Returns full string definition for message of type 'frame"
  (cl:format cl:nil "int32 msg_id~%bool remote_request~%int8 DLC~%uint8[] data~%int32 CRC_seq~%bool ACK~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <frame>))
  (cl:+ 0
     4
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <frame>))
  "Converts a ROS message object to a list"
  (cl:list 'frame
    (cl:cons ':msg_id (msg_id msg))
    (cl:cons ':remote_request (remote_request msg))
    (cl:cons ':DLC (DLC msg))
    (cl:cons ':data (data msg))
    (cl:cons ':CRC_seq (CRC_seq msg))
    (cl:cons ':ACK (ACK msg))
))
