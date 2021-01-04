# Install script for directory: /home/ialab2020/Desktop/ros_ur3_unity_vr/src/UR3_Robotics

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ur3_robotics/msg" TYPE FILE FILES "/home/ialab2020/Desktop/ros_ur3_unity_vr/src/UR3_Robotics/msg/UR3Joints.msg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ur3_robotics/srv" TYPE FILE FILES "/home/ialab2020/Desktop/ros_ur3_unity_vr/src/UR3_Robotics/srv/UR3ServiceMsg.srv")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ur3_robotics/cmake" TYPE FILE FILES "/home/ialab2020/Desktop/ros_ur3_unity_vr/build/UR3_Robotics/catkin_generated/installspace/ur3_robotics-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/ialab2020/Desktop/ros_ur3_unity_vr/devel/include/ur3_robotics")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/ialab2020/Desktop/ros_ur3_unity_vr/devel/share/roseus/ros/ur3_robotics")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/ialab2020/Desktop/ros_ur3_unity_vr/devel/share/common-lisp/ros/ur3_robotics")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/ialab2020/Desktop/ros_ur3_unity_vr/devel/share/gennodejs/ros/ur3_robotics")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/ialab2020/Desktop/ros_ur3_unity_vr/devel/lib/python2.7/dist-packages/ur3_robotics")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/ialab2020/Desktop/ros_ur3_unity_vr/devel/lib/python2.7/dist-packages/ur3_robotics")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ialab2020/Desktop/ros_ur3_unity_vr/build/UR3_Robotics/catkin_generated/installspace/ur3_robotics.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ur3_robotics/cmake" TYPE FILE FILES "/home/ialab2020/Desktop/ros_ur3_unity_vr/build/UR3_Robotics/catkin_generated/installspace/ur3_robotics-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ur3_robotics/cmake" TYPE FILE FILES
    "/home/ialab2020/Desktop/ros_ur3_unity_vr/build/UR3_Robotics/catkin_generated/installspace/ur3_roboticsConfig.cmake"
    "/home/ialab2020/Desktop/ros_ur3_unity_vr/build/UR3_Robotics/catkin_generated/installspace/ur3_roboticsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ur3_robotics" TYPE FILE FILES "/home/ialab2020/Desktop/ros_ur3_unity_vr/src/UR3_Robotics/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/ur3_robotics" TYPE PROGRAM FILES "/home/ialab2020/Desktop/ros_ur3_unity_vr/build/UR3_Robotics/catkin_generated/installspace/server_endpoint.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/ur3_robotics" TYPE PROGRAM FILES "/home/ialab2020/Desktop/ros_ur3_unity_vr/build/UR3_Robotics/catkin_generated/installspace/joint_state_subscriber.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/ur3_robotics" TYPE PROGRAM FILES "/home/ialab2020/Desktop/ros_ur3_unity_vr/build/UR3_Robotics/catkin_generated/installspace/move_ur3_service.py")
endif()

