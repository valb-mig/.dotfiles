DIR="$HOME/.config/polybar/redux"

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -q right -c "$DIR"/conf.ini &
polybar -q left  -c "$DIR"/conf.ini &
