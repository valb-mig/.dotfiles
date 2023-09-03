# Restart 
killall eww
killall polybar
killall picom
killall plank
killall stalonetray

php -S localhost:8800 -t "$HOME/.dotfiles/start-page"

#------
# Var's
# ------

# Bars = 'code, redux, regular, simple'

POLYBAR="code"

# Bars = 'bar, pop, simple_one, simple_two', 'simple_unity_left', 'simple_unity_top','work'

EWW_BAR_PRIMARY="simple_one"
EWW_BAR_SECONDARY="simple_two"

CONFIG="$HOME/.config/"
EWW="$HOME/.local/bin/eww"

# -------
# Monitor
# -------

xrandr --output HDMI2 --primary --mode 1920x1080 --rotate normal --output eDP1 --mode 1366x768 --rotate normal --left-of HDMI2

# --------
# Fix java
# --------
#
bash -c $CONFIG'bspwm/scripts/java_fix.sh'

# ---------
# Start EWW
# ---------

$EWW -c "$HOME/.config/eww/$EWW_BAR_SECONDARY" --restart open $EWW_BAR_SECONDARY &
$EWW -c "$HOME/.config/eww/$EWW_BAR_PRIMARY" --restart open $EWW_BAR_PRIMARY &

# ---------
# Wallpaper
# ---------
./.fehbg

# ------------
# X Cursor Fix
# ------------

xsetroot -cursor_name left_ptr &

# -------
# Borders
# -------

# bash $CONFIG'bspwm/borders'

# ---------
# StartPage
# ---------

php -S 127.0.0.1:7000 -t $HOME/Github/Projetos/start-page/

# ---------
# Clipboard
# ---------

./.local/bin/greenclip daemon
