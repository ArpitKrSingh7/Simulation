export HUSARION_ROS_BUILD_TYPE=simulation

colcon build --symlink-install --packages-up-to husarion_ugv --cmake-args -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTING=OFF

source install/setup.bash

ros2 launch husarion_ugv_gazebo simulation.launch.py spawn_delay:=2.0
