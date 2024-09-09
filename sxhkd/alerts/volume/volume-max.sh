#!/usr/bin/bash

# Notification
notify-send 'Max' -i $HOME/.config/sxhkd/icons/max.png

# Open
amixer -q sset Master 100%+
