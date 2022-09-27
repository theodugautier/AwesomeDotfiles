vim.cmd('filetype plugin indent on')

vim.api.nvim_exec([[
  autocmd BufNewFile,BufRead /tmp/mutt-* set filetype=mail
  autocmd BufNewFile,BufRead /*.rasi setf css
  autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact
  augroup ruby_subtypes
    autocmd!
    autocmd BufNewFile,BufRead *.pdf.erb let b:eruby_subtype='html'
    autocmd BufNewFile,BufRead *.pdf.erb set filetype=eruby
  augroup END
  au BufNewFile,BufRead *.arb set filetype=ruby
  au BufRead,BufNewFile *.ejs setfiletype html
  au FileType TelescopePrompt setlocal nocursorline
]], true)
