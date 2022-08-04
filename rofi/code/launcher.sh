#!/usr/bin/env bash

theme="code.rasi"

dir="$HOME/.config/rofi/code"
styles="code.rasi"
color="colors.rasi"

rofi -no-lazy-grab -show drun \
-modi run,drun,window \
-theme $dir/"$theme"

