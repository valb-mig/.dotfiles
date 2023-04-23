#!/bin/bash

MEM=$(free | grep Mem | awk '{print $4/$2 * 100.0}')

# Notification
notify-send "${MEM::-5}%"

