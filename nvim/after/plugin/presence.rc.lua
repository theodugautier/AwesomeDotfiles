local ok, presence = pcall(require, 'presence')
if (not ok) then return end

presence:setup({
    auto_update         = true,
    neovim_image_text   = "The One True Text Editor", -- Text displayed when hovered over the Neovim image
    main_image          = "file",
    enable_line_number  = false, -- Displays the current line number instead of the current project
    blacklist           = {}, -- A list of strings or Lua patterns that disable Rich Presence if the current file name, path, or workspace matches
    show_time           = true, -- Show the timer
    workspace_text      = 'Working on projects',
})
