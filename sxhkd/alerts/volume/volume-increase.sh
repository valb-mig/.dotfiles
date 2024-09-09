#!/usr/bin/bash

# Notification
notify-send '' -i $HOME/.config/sxhkd/icons/vol.png

# Open
amixer -q sset Master 5%+
