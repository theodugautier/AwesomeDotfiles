local awful = require('awful')

-- Autostart script
awful.spawn.with_shell("feh --bg-fill ~/.config/awesome/themes/background/boat.png")
awful.spawn.with_shell("xrandr --output DP-0 --rotate left --pos 0x0")
awful.spawn.with_shell("xrandr --output HDMI-0 --rotate normal --right-of DP-0")
awful.spawn.with_shell("xset r rate 300 30")
awful.util.spawn_with_shell("xrdb ~/.Xresources")
