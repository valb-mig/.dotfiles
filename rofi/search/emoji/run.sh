#!/usr/bin/env bash

theme="emoji/config.rasi"

dir="$HOME/.config/rofi/code"
styles="config.rasi"
color="$HOME/colors.rasi"

rofi -no-lazy-grab -show emoji \
-modi emoji \
-theme $dir/"$theme"

