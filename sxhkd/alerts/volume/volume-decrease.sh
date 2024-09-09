#!/usr/bin/bash

# Notification
notify-send '' -i $HOME/.config/sxhkd/icons/vol.png -u critical

# Open
amixer -q sset Master 5%-
