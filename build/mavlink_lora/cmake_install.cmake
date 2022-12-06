# Install script for directory: /home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/src/mavlink_lora

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/install")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/install" TYPE PROGRAM FILES "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/build/mavlink_lora/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/install" TYPE PROGRAM FILES "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/build/mavlink_lora/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/install/setup.bash;/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/install" TYPE FILE FILES
    "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/build/mavlink_lora/catkin_generated/installspace/setup.bash"
    "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/build/mavlink_lora/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/install/setup.sh;/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/install" TYPE FILE FILES
    "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/build/mavlink_lora/catkin_generated/installspace/setup.sh"
    "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/build/mavlink_lora/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/install/setup.zsh;/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/install" TYPE FILE FILES
    "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/build/mavlink_lora/catkin_generated/installspace/setup.zsh"
    "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/build/mavlink_lora/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/install" TYPE FILE FILES "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/build/mavlink_lora/catkin_generated/installspace/.rosinstall")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/build/mavlink_lora/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavlink_lora/msg" TYPE FILE FILES
    "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/src/mavlink_lora/msg/mavlink_lora_msg.msg"
    "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/src/mavlink_lora/msg/mavlink_lora_status.msg"
    "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/src/mavlink_lora/msg/mavlink_lora_pos.msg"
    "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/src/mavlink_lora/msg/mavlink_lora_attitude.msg"
    "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/src/mavlink_lora/msg/mavlink_lora_mission_item_int.msg"
    "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/src/mavlink_lora/msg/mavlink_lora_mission_list.msg"
    "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/src/mavlink_lora/msg/mavlink_lora_mission_ack.msg"
    "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/src/mavlink_lora/msg/mavlink_lora_command_ack.msg"
    "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/src/mavlink_lora/msg/mavlink_lora_command_start_mission.msg"
    "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/src/mavlink_lora/msg/mavlink_lora_command_set_mode.msg"
    "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/src/mavlink_lora/msg/mavlink_lora_statustext.msg"
    "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/src/mavlink_lora/msg/mavlink_lora_heartbeat.msg"
    "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/src/mavlink_lora/msg/mavlink_lora_set_position_target_local_ned.msg"
    "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/src/mavlink_lora/msg/mavlink_lora_enable_offboard.msg"
    "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/src/mavlink_lora/msg/mavlink_lora_command_takeoff.msg"
    "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/src/mavlink_lora/msg/mavlink_lora_command_land.msg"
    "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/src/mavlink_lora/msg/mavlink_lora_command_reposition.msg"
    "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/src/mavlink_lora/msg/mavlink_lora_gps_raw.msg"
    "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/src/mavlink_lora/msg/mavlink_lora_radio_status.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavlink_lora/cmake" TYPE FILE FILES "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/build/mavlink_lora/catkin_generated/installspace/mavlink_lora-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/devel/.private/mavlink_lora/include/mavlink_lora")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/devel/.private/mavlink_lora/share/roseus/ros/mavlink_lora")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/devel/.private/mavlink_lora/share/common-lisp/ros/mavlink_lora")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/devel/.private/mavlink_lora/share/gennodejs/ros/mavlink_lora")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/opt/anaconda3/bin/python3" -m compileall "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/devel/.private/mavlink_lora/lib/python3/dist-packages/mavlink_lora")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/devel/.private/mavlink_lora/lib/python3/dist-packages/mavlink_lora")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/build/mavlink_lora/catkin_generated/installspace/mavlink_lora.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavlink_lora/cmake" TYPE FILE FILES "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/build/mavlink_lora/catkin_generated/installspace/mavlink_lora-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavlink_lora/cmake" TYPE FILE FILES
    "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/build/mavlink_lora/catkin_generated/installspace/mavlink_loraConfig.cmake"
    "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/build/mavlink_lora/catkin_generated/installspace/mavlink_loraConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavlink_lora" TYPE FILE FILES "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/src/mavlink_lora/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/build/mavlink_lora/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/build/mavlink_lora/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
