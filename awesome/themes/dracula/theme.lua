local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
local colors = require('themes.dracula.colors')
local fonts = require('themes.dracula.fonts')

local theme = {}

theme.useless_gap   = dpi(6)
theme.hotkeys_bg = colors.selection
theme.hotkeys_fg = colors.white
theme.hotkeys_modifiers_fg = colors.purple
theme.hotkeys_border_color = colors.green
theme.hotkeys_group_margin = 10
theme.border_width = dpi(3)
theme.border_focus = colors.purple
theme.border_normal = colors.cyan
theme.wallpaper = os.getenv("HOME") .. "/.config/awesome/themes/background/boat.png"
theme.font = fonts.primary

client.shape_clip = 4

return theme