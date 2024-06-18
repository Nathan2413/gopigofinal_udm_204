;; Auto-generated. Do not edit!


(when (boundp 'bringup_car::SPI)
  (if (not (find-package "BRINGUP_CAR"))
    (make-package "BRINGUP_CAR"))
  (shadow 'SPI (find-package "BRINGUP_CAR")))
(unless (find-package "BRINGUP_CAR::SPI")
  (make-package "BRINGUP_CAR::SPI"))
(unless (find-package "BRINGUP_CAR::SPIREQUEST")
  (make-package "BRINGUP_CAR::SPIREQUEST"))
(unless (find-package "BRINGUP_CAR::SPIRESPONSE")
  (make-package "BRINGUP_CAR::SPIRESPONSE"))

(in-package "ROS")





(defclass bringup_car::SPIRequest
  :super ros::object
  :slots (_data_out ))

(defmethod bringup_car::SPIRequest
  (:init
   (&key
    ((:data_out __data_out) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _data_out __data_out)
   self)
  (:data_out
   (&optional __data_out)
   (if __data_out (setq _data_out __data_out)) _data_out)
  (:serialization-length
   ()
   (+
    ;; uint8[] _data_out
    (* 1    (length _data_out)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _data_out
     (write-long (length _data_out) s)
     (princ _data_out s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _data_out
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data_out (make-array n :element-type :char))
     (replace _data_out buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(defclass bringup_car::SPIResponse
  :super ros::object
  :slots (_data_in ))

(defmethod bringup_car::SPIResponse
  (:init
   (&key
    ((:data_in __data_in) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _data_in __data_in)
   self)
  (:data_in
   (&optional __data_in)
   (if __data_in (setq _data_in __data_in)) _data_in)
  (:serialization-length
   ()
   (+
    ;; uint8[] _data_in
    (* 1    (length _data_in)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _data_in
     (write-long (length _data_in) s)
     (princ _data_in s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _data_in
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data_in (make-array n :element-type :char))
     (replace _data_in buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(defclass bringup_car::SPI
  :super ros::object
  :slots ())

(setf (get bringup_car::SPI :md5sum-) "e04010cc40eb2ab4db306dc8c290e92b")
(setf (get bringup_car::SPI :datatype-) "bringup_car/SPI")
(setf (get bringup_car::SPI :request) bringup_car::SPIRequest)
(setf (get bringup_car::SPI :response) bringup_car::SPIResponse)

(defmethod bringup_car::SPIRequest
  (:response () (instance bringup_car::SPIResponse :init)))

(setf (get bringup_car::SPIRequest :md5sum-) "e04010cc40eb2ab4db306dc8c290e92b")
(setf (get bringup_car::SPIRequest :datatype-) "bringup_car/SPIRequest")
(setf (get bringup_car::SPIRequest :definition-)
      "uint8[] data_out    # sent byte array
---
uint8[] data_in     # received byte array

")

(setf (get bringup_car::SPIResponse :md5sum-) "e04010cc40eb2ab4db306dc8c290e92b")
(setf (get bringup_car::SPIResponse :datatype-) "bringup_car/SPIResponse")
(setf (get bringup_car::SPIResponse :definition-)
      "uint8[] data_out    # sent byte array
---
uint8[] data_in     # received byte array

")



(provide :bringup_car/SPI "e04010cc40eb2ab4db306dc8c290e92b")


