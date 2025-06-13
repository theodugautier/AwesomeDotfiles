local awful = require('awful')

-- Autostart script
awful.spawn.with_shell("feh --bg-fill ~/.config/awesome/themes/background/boat.png")
-- awful.spawn.with_shell("xrandr --output HDMI-0 --rotate right --right-of DP-2 --pos 0x0")
-- awful.spawn.with_shell("xrandr --output DP-0 --rotate normal --left-of DP-2")
-- awful.spawn.with_shell("xrandr --output DP-2 --rotate normal --right-of DP-0")
awful.spawn.with_shell("xrandr --output DP-0 --auto --pos 0x0")
awful.spawn.with_shell("xrandr --output DP-2 --auto --pos 1920x0")
awful.spawn.with_shell("xrandr --output HDMI-0 --auto --rotate right --pos 3840x0")
awful.spawn.with_shell("xset r rate 300 30")
awful.util.spawn_with_shell("xrdb ~/.Xresources")
