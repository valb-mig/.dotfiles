#                        ,////,
#                        /// 6|
#                        //  _|
#                       _/_,-'
#                  _.-/'/   \   ,/;,
#               ,-' /'  \_   \ / _/
#               `\ /     _/\  ` /
#                 |     /,  `\_/
#                 |     \'
#    /\_         /`      /\
#   /' /_``--.__/\  `,. /  \
#  |_/`  `-._     `\/  `\   `.
#            `-.__/'     `\   |
#                          `\  \
#                            `\ \
#                              \_\__
#                               \___)

#| Monitor 
xrandr --output HDMI2 --primary --mode 1920x1080 --rotate normal --output eDP1 --mode 1366x768 --rotate normal --left-of HDMI2

#| Fix java
bash ~/.config/bspwm/scripts/java_fix.sh

#| Polybar
$bash ~/.config/polybar/simple/launch.sh &

#| Wallpaper
$bash ./.fehbg

#| X Cursor Fix
xsetroot -cursor_name left_ptr &

#| Start EWW
#~/.local/bin/eww -c ~/.config/eww/bar --restart open bar &

#| Picom
#picom --experimental-backend

#| Borders
bash .config/bspwm/borders
