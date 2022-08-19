if status is-interactive
    # Commands to run in interactive sessions can go here

set CMAKE_PREFIX_PATH /usr/local/lib/cmake:$CMAKE_PREFIX_PATH
set CPR_DIR /usr/local/lib/cmake:CPR_DIR

source /opt/ros/melodic/share/rosbash/rosfish
bass source ~/Documents/catkin_ws/devel/setup.bash

source /home/scott/.config/fish/functions/fish_greeting.fish

alias what_temp "cat /sys/devices/virtual/thermal/thermal_zone*/temp"
alias ws "cd ~/Documents/catkin_ws"
alias wwifi "nmcli dev wifi list"

end
