
function move_base_goal 
	if test (count $argv) != 4
		echo "Not enough arguments, we need 4"
		exit
	end

	echo "linear x = $argv[1]"
        echo "linear y = $argv[2]"
        echo "angular z = $argv[2]"
        echo "angular w = $argv[3]"
	
        rostopic pub -1 /move_base/goal move_base_msgs/MoveBaseActionGoal "header:
  seq: 0
  stamp:
    secs: 0
    nsecs: 0
  frame_id: ''
goal_id:
  stamp:
    secs: 0
    nsecs: 0
  id: ''
goal:
  target_pose:
    header:
      seq: 0
      stamp:
        secs: 0
        nsecs: 0
      frame_id: 'map'
    pose:
      position:
        x: $argv[1]
        y: $argv[2]
        z: 0.0
      orientation:
        x: 0.0
        y: 0.0
        z: $argv[3]
        w: $argv[4]" 
        
end 
