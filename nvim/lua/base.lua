vim.cmd("autocmd!")

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.opt.clipboard:append { 'unnamedplus' }

vim.opt.autoread = true
vim.opt.showmatch = true -- show matching
vim.opt.ignorecase = true -- case insensitive
vim.opt.mouse = 'v' -- middle-click paste with
vim.opt.hlsearch = true -- highlight search
vim.opt.incsearch = true -- incremental search
vim.opt.tabstop = 4 -- number of columns occupied by a tab
vim.opt.softtabstop = 4 -- see multiple spaces as tabstops so <BS> does the right thing
vim.opt.expandtab = true -- converts tabs to white space
vim.opt.shiftwidth = 2 -- width for autoindents
vim.opt.autoindent = true -- indent a new line the same amount as the line just typed
vim.wo.number = true -- add line numbers
vim.opt.relativenumber = true
vim.opt.wildmode = 'longest,list' -- get bash-like tab completions
vim.opt.cc = '80' -- set an 80 column border for good coding style
vim.opt.clipboard = 'unnamedplus' -- using system clipboard
vim.opt.cursorline = true -- highlight current cursorline
vim.opt.ttyfast = true -- Speed up scrolling in Vim
vim.opt.wildignore:append { '*/node_modules/*' }

vim.cmd('syntax on')

vim.opt.formatoptions:append { 'r' } -- Add asterisks in block comments

vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.winblend = 0
vim.opt.wildoptions = 'pum'
vim.opt.pumblend = 5
vim.opt.background = 'dark'
