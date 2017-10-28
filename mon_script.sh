#!/bin/sh

export DISPLAY=:0.0

oneMonitor() {
  xrandr --output HDMI2 --off --output HDMI1 --off --output DP1 --off --output eDP1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off
}

secMonitor() {
  xrandr --output HDMI2 --off --output HDMI1 --mode 1920x1080 --pos 0x0 --rotate normal --output DP1 --off --output eDP1 --primary --mode 1920x1080 --pos 0x1080 --rotate normal --output VIRTUAL1 --off
}

xrandr | grep 'HDMI1 connected' > /dev/null && secMonitor || oneMonitor 

#xrandr | grep 'HDMI1 connected' > /dev/null && echo "secMonitor" || echo "oneMonitor"
#echo "dummy" > /home/niku/dummy.txt

