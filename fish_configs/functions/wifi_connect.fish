
function wifi_connect
 if test (count $argv) != 2
   echo "Not enough arguments, we need 2: SSID and Password"
   exit
 end 

 nmcli dev wifi connect $argv[1] password "$argv[2]"

end
