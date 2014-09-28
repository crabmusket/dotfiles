# turn off Display Power Management Service (DPMS)
xset -dpms
setterm -blank 0 -powerdown 0
# turn off black Screensaver
xset s off

# Pointer cursor
xsetroot -cursor_name left_ptr

# background colour
xsetroot -solid black

# Start xmonad
exec xmonad
