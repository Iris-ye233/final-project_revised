
(cl:in-package :asdf)

(defsystem "mobot_pub_des_state-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :nav_msgs-msg
)
  :components ((:file "_package")
    (:file "integer_query" :depends-on ("_package_integer_query"))
    (:file "_package_integer_query" :depends-on ("_package"))
    (:file "path" :depends-on ("_package_path"))
    (:file "_package_path" :depends-on ("_package"))
  ))