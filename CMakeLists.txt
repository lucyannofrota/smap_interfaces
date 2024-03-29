cmake_minimum_required(VERSION 3.5)
project(smap_interfaces)


# Default to C++14
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
endif()
if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

find_package(ament_cmake REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(std_msgs REQUIRED)
find_package(sensor_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)

set(MSG_FILES
    "msg/SmapData.msg"
    "msg/SmapObject.msg"
    "msg/SmapObservation.msg"
    "msg/SmapDetections.msg"
    "msg/SmapDetectionDebug.msg"
    "msg/BoundingBox2D.msg"
    "msg/BoundingBox3D.msg"
    "msg/DepthMap.msg"
)

set(SRV_FILES
    "srv/AddPerceptionModule.srv"
    "srv/SmapClasses.srv"
)

rosidl_generate_interfaces(${PROJECT_NAME}    
    ${MSG_FILES}
    ${SRV_FILES}
    DEPENDENCIES 
    std_msgs
    sensor_msgs
    geometry_msgs
    builtin_interfaces 
    rosidl_default_generators
)

ament_export_dependencies(rosidl_default_runtime)

include_directories(include/smap_interfaces)

# install(
#     TARGETS smap_interfaces
#     EXPORT export_${PROJECT_NAME}
#     # ARCHIVE DESTINATION lib
#     # LIBRARY DESTINATION lib
#     # RUNTIME DESTINATION bin
# )
    
# ament_export_targets(export_${PROJECT_NAME} HAS_LIBRARY_TARGET)

install(
  DIRECTORY include/smap_interfaces
  DESTINATION include
)

# install(
#   TARGETS smap_interfaces
#   EXPORT smap_interfaces
#   LIBRARY DESTINATION lib
#   ARCHIVE DESTINATION lib
#   RUNTIME DESTINATION bin
#   INCLUDES DESTINATION include
# )

ament_package()
