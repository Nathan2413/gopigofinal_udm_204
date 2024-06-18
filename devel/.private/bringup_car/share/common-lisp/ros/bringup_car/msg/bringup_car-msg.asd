
(cl:in-package :asdf)

(defsystem "bringup_car-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "MotorStatus" :depends-on ("_package_MotorStatus"))
    (:file "_package_MotorStatus" :depends-on ("_package"))
    (:file "MotorStatusLR" :depends-on ("_package_MotorStatusLR"))
    (:file "_package_MotorStatusLR" :depends-on ("_package"))
  ))