#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Github : @adi1090x

dir="$HOME/.config/rofi/switch"
theme='config'

## Run
rofi \
    -show window \
    -theme ${dir}/${theme}.rasi

