;; Auto-generated. Do not edit!


(when (boundp 'mobot_pub_des_state::integer_query)
  (if (not (find-package "MOBOT_PUB_DES_STATE"))
    (make-package "MOBOT_PUB_DES_STATE"))
  (shadow 'integer_query (find-package "MOBOT_PUB_DES_STATE")))
(unless (find-package "MOBOT_PUB_DES_STATE::INTEGER_QUERY")
  (make-package "MOBOT_PUB_DES_STATE::INTEGER_QUERY"))
(unless (find-package "MOBOT_PUB_DES_STATE::INTEGER_QUERYREQUEST")
  (make-package "MOBOT_PUB_DES_STATE::INTEGER_QUERYREQUEST"))
(unless (find-package "MOBOT_PUB_DES_STATE::INTEGER_QUERYRESPONSE")
  (make-package "MOBOT_PUB_DES_STATE::INTEGER_QUERYRESPONSE"))

(in-package "ROS")





(defclass mobot_pub_des_state::integer_queryRequest
  :super ros::object
  :slots ())

(defmethod mobot_pub_des_state::integer_queryRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass mobot_pub_des_state::integer_queryResponse
  :super ros::object
  :slots (_int_val ))

(defmethod mobot_pub_des_state::integer_queryResponse
  (:init
   (&key
    ((:int_val __int_val) 0)
    )
   (send-super :init)
   (setq _int_val (round __int_val))
   self)
  (:int_val
   (&optional __int_val)
   (if __int_val (setq _int_val __int_val)) _int_val)
  (:serialization-length
   ()
   (+
    ;; int32 _int_val
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _int_val
       (write-long _int_val s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _int_val
     (setq _int_val (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mobot_pub_des_state::integer_query
  :super ros::object
  :slots ())

(setf (get mobot_pub_des_state::integer_query :md5sum-) "648675cba6b3813e536ad7dad105da98")
(setf (get mobot_pub_des_state::integer_query :datatype-) "mobot_pub_des_state/integer_query")
(setf (get mobot_pub_des_state::integer_query :request) mobot_pub_des_state::integer_queryRequest)
(setf (get mobot_pub_des_state::integer_query :response) mobot_pub_des_state::integer_queryResponse)

(defmethod mobot_pub_des_state::integer_queryRequest
  (:response () (instance mobot_pub_des_state::integer_queryResponse :init)))

(setf (get mobot_pub_des_state::integer_queryRequest :md5sum-) "648675cba6b3813e536ad7dad105da98")
(setf (get mobot_pub_des_state::integer_queryRequest :datatype-) "mobot_pub_des_state/integer_queryRequest")
(setf (get mobot_pub_des_state::integer_queryRequest :definition-)
      "#empty 
---
#response: an integer
int32 int_val

")

(setf (get mobot_pub_des_state::integer_queryResponse :md5sum-) "648675cba6b3813e536ad7dad105da98")
(setf (get mobot_pub_des_state::integer_queryResponse :datatype-) "mobot_pub_des_state/integer_queryResponse")
(setf (get mobot_pub_des_state::integer_queryResponse :definition-)
      "#empty 
---
#response: an integer
int32 int_val

")



(provide :mobot_pub_des_state/integer_query "648675cba6b3813e536ad7dad105da98")


