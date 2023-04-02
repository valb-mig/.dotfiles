#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Github : @adi1090x

dir="$HOME/.config/rofi/find"
theme='config'

## Run
rofi \
    -show drun \
    -icon-theme "Mkos-Big-Sur" \
    -theme ${dir}/${theme}.rasi

