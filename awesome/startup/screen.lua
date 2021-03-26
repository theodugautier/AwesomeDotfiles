local awful = require('awful')

--[[
local function set_wallpaper(s)
  local wallpaper = backgrounds.archkraken
  gears.wallpaper.maximized(wallpaper, s, true)
end
screen.connect_signal("property::geometry", set_wallpaper)
awful.screen.connect_for_each_screen(
  function(s)
    set_wallpaper(s)
  end
)
]]

-- awful.spawn.with_shell("feh --bg-fill ~/.config/awesome/themes/backgrounds/ship.png")
-- awful.spawn.with_shell("/home/jeremie1001/.screenlayout/default_dual.sh")
-- awful.spawn.with_shell("picom")

-- Autostart Applications
awful.spawn.with_shell("feh --bg-fill ~/.config/awesome/themes/background/boat.png")
awful.util.spawn_with_shell("xrdb ~/.Xresources")