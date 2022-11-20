#!bin/bash

# Kill polybar

killall polybar

# Configure one monitor

xrandr --output HDMI2 --primary --mode 1920x1080 --rotate normal --output eDP1 --off

# Wallpaper

$bash ./.fehbg

# Load polybar one monitor

$bash ~/.config/polybar/code_one_monitor/launch.sh &

# Notify

notify-send "Monitor Off"

