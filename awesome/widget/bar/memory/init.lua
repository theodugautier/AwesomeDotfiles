-- dependencies
  -- lain

local awful = require('awful')
local wibox = require('wibox')
local gears = require('gears')
local lain  = require("lain")
local clickable_container = require('widget.clickable-container')
local dpi = require('beautiful').xresources.apply_dpi
local fonts = require('themes.dracula.fonts')

local return_button = function(color, space)
  local markup = lain.util.markup
  local mem_now = lain.widget.mem({
      settings = function()
          widget:set_markup(markup.fontfg(fonts.primary, "#FFFF", mem_now.used))
      end
  })

  local widget_button = wibox.widget {
    {
      {
        {
          {
            mem_now,
            layout = wibox.layout.fixed.horizontal,
         },
         top = dpi(4),
         bottom = dpi(4),
         left = dpi(12),
         right = dpi(12),
         widget = wibox.container.margin
       },
       shape = gears.shape.rounded_bar,
       bg = color,
       fg = '#FFFFFF',
       widget = wibox.container.background
     },
     forced_width = icon_size,
     forced_height = icon_size,
     widget = clickable_container
   },
   top = dpi(5),
   right = dpi(space),
   widget = wibox.container.margin
 }

  return widget_button
end

return return_button