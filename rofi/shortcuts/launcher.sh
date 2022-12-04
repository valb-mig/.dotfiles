#!/usr/bin/env bash

style="$($HOME/.config/rofi/shortcuts/config.rasi)"
dir="$HOME/.config/rofi/shortcuts/$style"

rofi_command="rofi -theme $dir/config.rasi"

# Error msg

# Browser
app="firefox"

# Links
firefox="爵"
github=""
mail=""
youtube=""
code="﬏"
folder=""

# Variable passed to rofi
options="$firefox\n$github\n$mail\n$youtube\n$code\n$folder"

chosen="$(echo -e "$options" | $rofi_command -p "Shortcuts" -dmenu -selected-row 0)"
case $chosen in
    $firefox)
        firefox
        ;;
    $github)
        $app https://www.github.com &
        ;;
    $mail)
        $app https://www.gmail.com &
        ;;
    $youtube)
        $app https://www.youtube.com &
        ;;
    $folder)
        nautilus
        ;;
esac

