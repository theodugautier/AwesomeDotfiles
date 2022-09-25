--DEPENDENCIES
	--free

local wibox = require('wibox')
local gears = require('gears')
local dpi = require('beautiful').xresources.apply_dpi
local colors = require('themes.dracula.colors')
local watch = require('awful.widget.watch')

local main_color = colors.cyan

local widget_text = wibox.widget {
  font = 'Inter Bold 12',
  text = "RAM",
  valign = "center",
  align = "center",
  widget = wibox.widget.textbox
}

local slider = wibox.widget {
  widget_text,
  colors = {'transparent', main_color},
  border_width = dpi(1),
  border_color = main_color,
  thickness = dpi(10),
  values = {96, 4},
  max_value = 130,
  min_value = 0,
  rounded_edge = true,
  start_angle = 47.5/130*2*math.pi,
  widget = wibox.container.arcchart
}

watch (
	[[bash -c "free | grep Mem | awk '{print $3/$2*100}'"]],
	20,
	function(_, stdout)
		local percentage = stdout:match('%d+%.%d+')
    slider:set_values({(100-percentage), percentage})
		collectgarbage('collect')
	end
)

local ram_meter = wibox.widget {
	{
    {
      slider,
  		layout = wibox.layout.fixed.horizontal
    },
    margins = dpi(30),
    widget = wibox.container.margin
  },
  shape = gears.shape.rounded_rect,
  bg = colors.background,
  fg = main_color,
  widget = wibox.container.background
}

return ram_meter
