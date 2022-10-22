local ok, telescope = pcall(require, 'telescope')
if (not ok) then return end

local actions = require('telescope.actions')
local builtin = require('telescope.builtin')

telescope.setup {
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  }
}

vim.keymap.set('n', '<C-p>', function()
  builtin.git_files({
    hidden = true
  })
end)

vim.keymap.set('n', ';r', function()
  builtin.live_grep()
end)

vim.keymap.set('n', '\\\\', function()
  builtin.buffers()
end)

vim.keymap.set('n', ';g', function()
  builtin.git_status()
end)

vim.keymap.set('n', ';;', function()
  builtin.resume()
end)

vim.keymap.set('n', ';e', function()
  builtin.diagnostics()
end)

telescope.load_extension("ag")
