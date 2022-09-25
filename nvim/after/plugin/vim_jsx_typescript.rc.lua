vim.cmd('autocmd BufEnter *.js, *.jsx, *.ts, *.tsx :syntax sync fromstart')
vim.cmd('autocmd BufLeave *.js, *.jsx, *.ts, *.tsx :syntax sync clear')

vim.cmd('autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact')
