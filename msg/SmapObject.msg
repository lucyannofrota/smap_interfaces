uint8 label # Class of the object

smap_interfaces/BoundingBox2D bounding_box_2d # 2D Bounding Box of the object

# bool has_pointcloud

smap_interfaces/BoundingBox3D aabb # 3D Axis Alligned Bounding Box (AABB) of the object
smap_interfaces/BoundingBox3D obb # 3D Oriented Bounding Box (OBB) of the object

geometry_msgs/Pose obj_pose
sensor_msgs/PointCloud2 obj_pointcloud