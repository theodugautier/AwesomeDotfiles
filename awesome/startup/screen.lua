local awful = require('awful')

-- Autostart script
awful.spawn.with_shell("feh --bg-fill ~/.config/awesome/themes/background/boat.png")
awful.spawn.with_shell("xrandr --output HDMI-0 --rotate right")
awful.spawn.with_shell("xset r rate 300 30")
awful.util.spawn_with_shell("xrdb ~/.Xresources")
