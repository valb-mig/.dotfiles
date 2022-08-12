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

#|
#picom &

#| Code / bar
$bash ~/.config/polybar/code/launch.sh &

#| Wallpaper
$bash ./.fehbg

#| X Cursor Fix
xsetroot -cursor_name left_ptr &

#| 2° Borders
bash ~/.config/bspwm/borders

