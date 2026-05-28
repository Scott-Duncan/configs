#! /bin/sh

killall -q polybar

#while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
sleep 2
polybar laptop-single-screen --config=/home/scott/.config/polybar/config.ini &
# polybar second-screen &
# polybar laptop-screen &
