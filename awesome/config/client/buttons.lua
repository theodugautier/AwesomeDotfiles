local awful = require('awful')
local modkey = require('config.keys.mod').modKey

local clientbuttons = awful.util.table.join(
  awful.button({ }, 1, function (c) client.focus = c; c:raise() end),
  awful.button({ modkey }, 1, awful.mouse.client.move),
  awful.button({ modkey }, 3, awful.mouse.client.resize)
)

return clientbuttons