#!bin/bash

# Configure one monitor

xrandr --output eDP1 --primary --mode 1366x768 --rotate normal --output HDMI2 --off

# Wallpaper

$bash ./.fehbg

# Notify

notify-send "Monitor Off"
