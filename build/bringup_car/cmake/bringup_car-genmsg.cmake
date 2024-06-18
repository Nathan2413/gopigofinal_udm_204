# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "bringup_car: 2 messages, 1 services")

set(MSG_I_FLAGS "-Ibringup_car:/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(bringup_car_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/msg/MotorStatus.msg" NAME_WE)
add_custom_target(_bringup_car_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bringup_car" "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/msg/MotorStatus.msg" ""
)

get_filename_component(_filename "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/msg/MotorStatusLR.msg" NAME_WE)
add_custom_target(_bringup_car_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bringup_car" "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/msg/MotorStatusLR.msg" "bringup_car/MotorStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/srv/SPI.srv" NAME_WE)
add_custom_target(_bringup_car_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bringup_car" "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/srv/SPI.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(bringup_car
  "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/msg/MotorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bringup_car
)
_generate_msg_cpp(bringup_car
  "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/msg/MotorStatusLR.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/msg/MotorStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bringup_car
)

### Generating Services
_generate_srv_cpp(bringup_car
  "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/srv/SPI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bringup_car
)

### Generating Module File
_generate_module_cpp(bringup_car
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bringup_car
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(bringup_car_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(bringup_car_generate_messages bringup_car_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/msg/MotorStatus.msg" NAME_WE)
add_dependencies(bringup_car_generate_messages_cpp _bringup_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/msg/MotorStatusLR.msg" NAME_WE)
add_dependencies(bringup_car_generate_messages_cpp _bringup_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/srv/SPI.srv" NAME_WE)
add_dependencies(bringup_car_generate_messages_cpp _bringup_car_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bringup_car_gencpp)
add_dependencies(bringup_car_gencpp bringup_car_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bringup_car_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(bringup_car
  "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/msg/MotorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bringup_car
)
_generate_msg_eus(bringup_car
  "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/msg/MotorStatusLR.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/msg/MotorStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bringup_car
)

### Generating Services
_generate_srv_eus(bringup_car
  "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/srv/SPI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bringup_car
)

### Generating Module File
_generate_module_eus(bringup_car
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bringup_car
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(bringup_car_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(bringup_car_generate_messages bringup_car_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/msg/MotorStatus.msg" NAME_WE)
add_dependencies(bringup_car_generate_messages_eus _bringup_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/msg/MotorStatusLR.msg" NAME_WE)
add_dependencies(bringup_car_generate_messages_eus _bringup_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/srv/SPI.srv" NAME_WE)
add_dependencies(bringup_car_generate_messages_eus _bringup_car_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bringup_car_geneus)
add_dependencies(bringup_car_geneus bringup_car_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bringup_car_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(bringup_car
  "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/msg/MotorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bringup_car
)
_generate_msg_lisp(bringup_car
  "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/msg/MotorStatusLR.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/msg/MotorStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bringup_car
)

### Generating Services
_generate_srv_lisp(bringup_car
  "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/srv/SPI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bringup_car
)

### Generating Module File
_generate_module_lisp(bringup_car
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bringup_car
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(bringup_car_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(bringup_car_generate_messages bringup_car_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/msg/MotorStatus.msg" NAME_WE)
add_dependencies(bringup_car_generate_messages_lisp _bringup_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/msg/MotorStatusLR.msg" NAME_WE)
add_dependencies(bringup_car_generate_messages_lisp _bringup_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/srv/SPI.srv" NAME_WE)
add_dependencies(bringup_car_generate_messages_lisp _bringup_car_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bringup_car_genlisp)
add_dependencies(bringup_car_genlisp bringup_car_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bringup_car_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(bringup_car
  "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/msg/MotorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bringup_car
)
_generate_msg_nodejs(bringup_car
  "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/msg/MotorStatusLR.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/msg/MotorStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bringup_car
)

### Generating Services
_generate_srv_nodejs(bringup_car
  "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/srv/SPI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bringup_car
)

### Generating Module File
_generate_module_nodejs(bringup_car
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bringup_car
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(bringup_car_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(bringup_car_generate_messages bringup_car_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/msg/MotorStatus.msg" NAME_WE)
add_dependencies(bringup_car_generate_messages_nodejs _bringup_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/msg/MotorStatusLR.msg" NAME_WE)
add_dependencies(bringup_car_generate_messages_nodejs _bringup_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/srv/SPI.srv" NAME_WE)
add_dependencies(bringup_car_generate_messages_nodejs _bringup_car_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bringup_car_gennodejs)
add_dependencies(bringup_car_gennodejs bringup_car_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bringup_car_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(bringup_car
  "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/msg/MotorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bringup_car
)
_generate_msg_py(bringup_car
  "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/msg/MotorStatusLR.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/msg/MotorStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bringup_car
)

### Generating Services
_generate_srv_py(bringup_car
  "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/srv/SPI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bringup_car
)

### Generating Module File
_generate_module_py(bringup_car
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bringup_car
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(bringup_car_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(bringup_car_generate_messages bringup_car_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/msg/MotorStatus.msg" NAME_WE)
add_dependencies(bringup_car_generate_messages_py _bringup_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/msg/MotorStatusLR.msg" NAME_WE)
add_dependencies(bringup_car_generate_messages_py _bringup_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/gopigo3/gopigo3_bringup/bringup_car/srv/SPI.srv" NAME_WE)
add_dependencies(bringup_car_generate_messages_py _bringup_car_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bringup_car_genpy)
add_dependencies(bringup_car_genpy bringup_car_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bringup_car_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bringup_car)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bringup_car
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(bringup_car_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bringup_car)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bringup_car
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(bringup_car_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bringup_car)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bringup_car
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(bringup_car_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bringup_car)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bringup_car
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(bringup_car_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bringup_car)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bringup_car\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bringup_car
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(bringup_car_generate_messages_py std_msgs_generate_messages_py)
endif()
