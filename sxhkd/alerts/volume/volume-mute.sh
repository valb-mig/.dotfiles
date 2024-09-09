#!/usr/bin/bash

# Notification
notify-send 'Mute' -i $HOME/.config/sxhkd/icons/mute.png -u critical

# Open
amixer -q sset Master 100%-
