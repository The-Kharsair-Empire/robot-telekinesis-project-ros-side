# Install script for directory: /home/ialab2020/Desktop/ros_ur3_unity_vr/src/universal_robot/ur_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ialab2020/Desktop/ros_ur3_unity_vr/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ur_msgs/msg" TYPE FILE FILES
    "/home/ialab2020/Desktop/ros_ur3_unity_vr/src/universal_robot/ur_msgs/msg/Analog.msg"
    "/home/ialab2020/Desktop/ros_ur3_unity_vr/src/universal_robot/ur_msgs/msg/Digital.msg"
    "/home/ialab2020/Desktop/ros_ur3_unity_vr/src/universal_robot/ur_msgs/msg/IOStates.msg"
    "/home/ialab2020/Desktop/ros_ur3_unity_vr/src/universal_robot/ur_msgs/msg/RobotStateRTMsg.msg"
    "/home/ialab2020/Desktop/ros_ur3_unity_vr/src/universal_robot/ur_msgs/msg/MasterboardDataMsg.msg"
    "/home/ialab2020/Desktop/ros_ur3_unity_vr/src/universal_robot/ur_msgs/msg/RobotModeDataMsg.msg"
    "/home/ialab2020/Desktop/ros_ur3_unity_vr/src/universal_robot/ur_msgs/msg/ToolDataMsg.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ur_msgs/srv" TYPE FILE FILES
    "/home/ialab2020/Desktop/ros_ur3_unity_vr/src/universal_robot/ur_msgs/srv/SetPayload.srv"
    "/home/ialab2020/Desktop/ros_ur3_unity_vr/src/universal_robot/ur_msgs/srv/SetSpeedSliderFraction.srv"
    "/home/ialab2020/Desktop/ros_ur3_unity_vr/src/universal_robot/ur_msgs/srv/SetIO.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ur_msgs/cmake" TYPE FILE FILES "/home/ialab2020/Desktop/ros_ur3_unity_vr/build/universal_robot/ur_msgs/catkin_generated/installspace/ur_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/ialab2020/Desktop/ros_ur3_unity_vr/devel/include/ur_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/ialab2020/Desktop/ros_ur3_unity_vr/devel/share/roseus/ros/ur_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/ialab2020/Desktop/ros_ur3_unity_vr/devel/share/common-lisp/ros/ur_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/ialab2020/Desktop/ros_ur3_unity_vr/devel/share/gennodejs/ros/ur_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/ialab2020/Desktop/ros_ur3_unity_vr/devel/lib/python2.7/dist-packages/ur_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/ialab2020/Desktop/ros_ur3_unity_vr/devel/lib/python2.7/dist-packages/ur_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ialab2020/Desktop/ros_ur3_unity_vr/build/universal_robot/ur_msgs/catkin_generated/installspace/ur_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ur_msgs/cmake" TYPE FILE FILES "/home/ialab2020/Desktop/ros_ur3_unity_vr/build/universal_robot/ur_msgs/catkin_generated/installspace/ur_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ur_msgs/cmake" TYPE FILE FILES
    "/home/ialab2020/Desktop/ros_ur3_unity_vr/build/universal_robot/ur_msgs/catkin_generated/installspace/ur_msgsConfig.cmake"
    "/home/ialab2020/Desktop/ros_ur3_unity_vr/build/universal_robot/ur_msgs/catkin_generated/installspace/ur_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ur_msgs" TYPE FILE FILES "/home/ialab2020/Desktop/ros_ur3_unity_vr/src/universal_robot/ur_msgs/package.xml")
endif()

