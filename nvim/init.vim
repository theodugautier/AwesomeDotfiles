set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching
set ignorecase              " case insensitive
set mouse=v                 " middle-click paste with
set hlsearch                " highlight search
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim

call plug#begin()
 Plug 'dracula/vim'
 Plug 'SirVer/ultisnips'
 Plug 'honza/vim-snippets'
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'mhinz/vim-startify'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}

 Plug 'kyazdani42/nvim-web-devicons'
 Plug 'dense-analysis/ale'
 Plug 'ap/vim-css-color'

 " Language
 Plug 'vim-ruby/vim-ruby'
 Plug 'tpope/vim-rails'

 " faster development
 Plug 'kien/ctrlp.vim'
 Plug 'tpope/vim-endwise'

 Plug 'stoozy/vimcord'
call plug#end()

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

syntax enable

colorscheme dracula" open new split panes to right and below
set splitright
set splitbelow

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" CTRL + P configuration
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git|log\'

" Ruby / Rails Configuration
au BufNewFile,BufRead *.arb set filetype=ruby

" Ale Config
let g:ale_linters_explicit = 1
let g:ale_disable_lsp = 1
let g:ale_linter_aliases = {'rspec': 'ruby'}
let g:ale_completion_enabled = 0
let g:ale_lint_on_enter = 1
let g:ale_lint_on_filetype_changed = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 1
let g:ale_fixers = { '*': ['remove_trailing_lines', 'trim_whitespace'] }
"let g:ale_fixers = { '*': ['remove_trailing_lines', 'trim_whitespace'], 'javascript': ['prettier', 'eslint'], 'ruby': ['rubocop'], 'html': ['prettier'], 'erb': ['erblint']}
"let g:ale_linters = { 'javascript': ['prettier', 'eslint'], 'ruby': ['rubocop'], 'html': ['prettier'], 'erb': ['erblint']}
let g:ale_sign_column_always = 1
let g:ale_fix_on_save = 1

" Ale next Wrap
nmap <silent> <C-e> <Plug>(ale_next_wrap)

" Coc
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
