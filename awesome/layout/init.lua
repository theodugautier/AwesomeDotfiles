local awful = require("awful")
require('startup.screen')

awful.layout.layouts = {
  --awful.layout.suit.floating,
  awful.layout.suit.tile,
  --awful.layout.suit.tile.left,
  --awful.layout.suit.tile.bottom,
  --awful.layout.suit.tile.top,
  awful.layout.suit.fair,
  awful.layout.suit.spiral,
  awful.layout.suit.max,
  -- lain.layout.cascade,
  --lain.layout.cascade.tile,
  --lain.layout.centerwork,
  --lain.layout.centerwork.horizontal,
  -- lain.layout.termfair,
  --lain.layout.termfair.center,
}

awful.screen.connect_for_each_screen(
  function(s)
    awful.tag({ "1", "2", "3", "4", "5", "6", "7", "8", "9" }, s, awful.layout.layouts[1])
  end
)