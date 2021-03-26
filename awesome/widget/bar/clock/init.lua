local awful = require('awful')
local wibox = require('wibox')
local gears = require('gears')
local clickable_container = require('widget.clickable-container')
local dpi = require('beautiful').xresources.apply_dpi
local icons = require('themes.icons')

local date = '%d.%b.%Y'

local return_button = function(color, space)
	local widget_button_date = wibox.widget {
		format = date,
		refresh = 1,
		widget = wibox.widget.textclock
	}

	local widget_button = wibox.widget {
	     {
	       {
	         {
						 {
							widget_button_date,
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
