function catkin_bs -d "Build the catking workspace located at ~/Documents/catkin_ws"
    
    set --local current_dir (pwd)
    cd ~/Documents/catkin_ws
    catkin build -s
    bass source ~/Documents/catkin_ws/devel/setup.bash
    cd "$current_dir"
end
