# -------
# Monitor
# -------

xrandr --output HDMI2 --primary --mode 1920x1080 --rotate normal --output eDP1 --mode 1366x768 --rotate normal --left-of HDMI2

# --------
# Fix java
# --------

bash ~/.config/bspwm/scripts/java_fix.sh

# -------
# Polybar
# -------

# $bash ~/.config/polybar/code/launch.sh &

# -------
# "Dock" (made with polybar)
# -------

# $bash ~/.config/polybar/dock/run.sh &

# ---------
# Start EWW
# ---------

~/.local/bin/eww -c ~/.config/eww/pop --restart open pop &

# ---------
# Wallpaper
# ---------

$bash ./.fehbg

# ------------
# X Cursor Fix
# ------------

xsetroot -cursor_name left_ptr &

# -----
# Picom
# -----

# picom

# -------
# Borders
# -------

# bash .config/bspwm/borders

# -----
# Plank
# -----

# plank &
