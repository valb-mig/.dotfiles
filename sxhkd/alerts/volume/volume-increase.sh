#!/usr/bin/bash

# Notification
notify-send '' -i $HOME/Pictures/Icons/vol.png

# Open
amixer -q sset Master 5%+
