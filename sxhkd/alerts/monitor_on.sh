#!bin/bash

# Kill polybar

killall polybar

# Back with defaults config

bash ~/.config/bspwm/autorun/run.sh

# Notify

notify-send "Monitor On"

