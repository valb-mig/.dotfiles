#!bin/bash

# Configure one monitor

xrandr --output HDMI2 --primary --mode 1920x1080 --rotate normal --output eDP1 --mode 1366x768 --rotate normal --left-of HDMI2

# Wallpaper

$bash ./.fehbg

# Notify

notify-send "Monitor Off
