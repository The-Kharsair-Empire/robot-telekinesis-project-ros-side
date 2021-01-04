# Install script for directory: /home/ialab2020/Desktop/ros_ur3_unity_vr/src/robot_driver

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_driver/cmake" TYPE FILE FILES "/home/ialab2020/Desktop/ros_ur3_unity_vr/build/robot_driver/catkin_generated/installspace/robot_driver-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ialab2020/Desktop/ros_ur3_unity_vr/build/robot_driver/catkin_generated/installspace/robot_driver.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_driver/cmake" TYPE FILE FILES "/home/ialab2020/Desktop/ros_ur3_unity_vr/build/robot_driver/catkin_generated/installspace/robot_driver-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_driver/cmake" TYPE FILE FILES
    "/home/ialab2020/Desktop/ros_ur3_unity_vr/build/robot_driver/catkin_generated/installspace/robot_driverConfig.cmake"
    "/home/ialab2020/Desktop/ros_ur3_unity_vr/build/robot_driver/catkin_generated/installspace/robot_driverConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_driver" TYPE FILE FILES "/home/ialab2020/Desktop/ros_ur3_unity_vr/src/robot_driver/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/robot_driver" TYPE PROGRAM FILES "/home/ialab2020/Desktop/ros_ur3_unity_vr/build/robot_driver/catkin_generated/installspace/server_endpoint.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/robot_driver" TYPE PROGRAM FILES "/home/ialab2020/Desktop/ros_ur3_unity_vr/build/robot_driver/catkin_generated/installspace/relay.py")
endif()

