local ok, vim_test = pcall(require, 'vim-test')
if (not ok) then return end

vim.keymap.set('n', '<silent> <leader>tf', ':TestFile<CR>')
vim.keymap.set('n', '<silent> <leader>ts', ':TestSuite<CR>')
