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
find_package(geometry_msgs REQUIRED)

set(MSG_FILES
    "msg/SmapData.msg"
    "msg/SmapPrediction.msg"
    #"msg/Object.msg"
    #"msg/ObjectsStamped.msg"
    #"msg/Keypoint2Di.msg"
    #"msg/Keypoint2Df.msg"
    #"msg/Keypoint3D.msg"
    #"msg/BoundingBox2Di.msg"
    #"msg/BoundingBox2Df.msg"
    #"msg/BoundingBox3D.msg"
    #"msg/Skeleton2D.msg"
    #"msg/Skeleton3D.msg"
    #"msg/DepthInfoStamped.msg"
    #"msg/PlaneStamped.msg"
)

set(SRV_FILES
    "srv/AddThreeInts.srv"
)

rosidl_generate_interfaces(${PROJECT_NAME}    
    ${MSG_FILES}
    ${SRV_FILES}
    DEPENDENCIES 
    std_msgs
    geometry_msgs
    builtin_interfaces 
    rosidl_default_generators
)

ament_export_dependencies(rosidl_default_runtime)
ament_package()
