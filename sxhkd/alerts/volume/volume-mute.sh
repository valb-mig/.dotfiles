#!/usr/bin/bash

# Notification
notify-send 'Mute' -i $HOME/Pictures/Icons/mute.png -u critical

# Open
amixer -q sset Master 100%-
