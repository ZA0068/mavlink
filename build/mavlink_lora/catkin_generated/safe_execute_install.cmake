execute_process(COMMAND "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/build/mavlink_lora/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/build/mavlink_lora/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
