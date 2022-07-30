#___________________________________________________________
#        |
#       / \
#      / _ \
#     |.o '.|
#     |'._.'|
#     |     |
#   ,'|  |  |`.
#  /  |  |  |  \
#  |,-'--|--'-.| 
#___________________________________________________________
DIR="$HOME/.config/polybar/mochi"
killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -q main -c "$DIR"/config.ini &
polybar -q secondary -c "$DIR"/config.ini &

#"Dock LMAO"
polybar -q bottom -c "$DIR"/config.ini &
#___________________________________________________________
