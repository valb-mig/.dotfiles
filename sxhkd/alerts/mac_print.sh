#!/usr/bin/bash

pwd

whoami

# Print
scrot 'shot_%H%M%S.png' -s 

# Notification
notify-send "Cut Printscreen"

