#!/usr/bin/env sh

killall -q polybar

#while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
sleep 2
polybar laptop-screen --config=/home/scott/.config/polybar/config.ini &
polybar main-screen --config=/home/scott/.config/polybar/config.ini &
