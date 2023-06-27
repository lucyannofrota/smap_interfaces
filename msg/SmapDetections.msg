geometry_msgs/PoseStamped stamped_pose
sensor_msgs/Image rgb_image
sensor_msgs/PointCloud2 pointcloud

uint8 module_id # Module unique ID
smap_interfaces/SmapObject[] objects # List of detected objects
geometry_msgs/TransformStamped camera_to_map