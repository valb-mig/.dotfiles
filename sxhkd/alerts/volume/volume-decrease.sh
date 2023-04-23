#!/usr/bin/bash

# Notification
notify-send '' -i $HOME/Pictures/Icons/vol.png -u critical

# Open
amixer -q sset Master 5%-
