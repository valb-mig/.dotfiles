#!/usr/bin/bash

# Notification
notify-send 'Max' -i $HOME/Pictures/Icons/max.png

# Open
amixer -q sset Master 100%+
