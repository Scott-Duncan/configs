#! /bin/sh

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
polybar main-screen &
polybar second-screen &
polybar laptop-screen &
