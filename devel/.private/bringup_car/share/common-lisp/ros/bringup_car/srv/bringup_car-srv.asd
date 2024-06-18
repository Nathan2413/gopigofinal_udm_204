
(cl:in-package :asdf)

(defsystem "bringup_car-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SPI" :depends-on ("_package_SPI"))
    (:file "_package_SPI" :depends-on ("_package"))
  ))