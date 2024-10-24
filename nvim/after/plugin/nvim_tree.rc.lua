local ok, tree = pcall(require, 'nvim-tree')
if (not ok) then return end

vim.keymap.set('', '<C-f>', ':NvimTreeFindFile<CR>')
vim.keymap.set('', '<C-t>', ':NvimTreeToggle<CR>')

require'nvim-web-devicons'.get_icons()

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

tree.setup {
  git = {
    ignore = false
  },
  actions = {
    open_file = {
      window_picker = {
        enable = false,
      }
    }
  }
}
