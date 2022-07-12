setxkbmap -layout us,ru &
dwmblocks &
xinput --set-prop 11 'libinput Accel Speed' -1 &

exec dwm
