uint8 label # Class of the object
float32 confidence # Confidence of the most probable object

float32[] probability_distribution # Distribution of probability across all possibible classes 
                                   # The sum of all elements of this vector should have sum = 1
uint8 module_id # Module unique ID

smap_interfaces/BoundingBox2D bb_2d # 2D Bounding Box of the object

smap_interfaces/BoundingBox3D aabb # 3D Axis Aligned Bounding Box (AABB) of the object
smap_interfaces/BoundingBox3D obb # 3D Oriented Bounding Box (OBB) of the object

geometry_msgs/PoseStamped pose
sensor_msgs/PointCloud2 pointcloud