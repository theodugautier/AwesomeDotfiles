local keymap = vim.keymap

vim.g.mapleader = ','

keymap.set('n', 'x', '"_x')

-- no arrow keys
keymap.set('i', '<up>', '<nop>')
keymap.set('i', '<left>', '<nop>')
keymap.set('i', '<right>', '<nop>')
keymap.set('i', '<down>', '<nop>')
keymap.set('', '<up>', '<nop>')
keymap.set('', '<left>', '<nop>')
keymap.set('', '<right>', '<nop>')
keymap.set('', '<down>', '<nop>')

keymap.set('n', '<C-w><down>', '<C-w>-')

-- Indent all files
keymap.set('n', '<leader>i', 'mmgg=G`m')
