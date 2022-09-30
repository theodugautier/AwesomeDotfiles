require('nvim-test').setup()

local ok, nvim_test = pcall(require, 'nvim-test')
if (not ok) then return end

vim.keymap.set('n', '<silent> <leader>tf', ':TestFile<CR>')
vim.keymap.set('n', '<silent> <leader>te', ':TestSuite<CR>')

