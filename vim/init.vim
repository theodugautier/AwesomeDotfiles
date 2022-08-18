set nocompatible            " disable compatibility to old-time vi
set autoread
set showmatch               " show matching
set ignorecase              " case insensitive
set mouse=v                 " middle-click paste with
set hlsearch                " highlight search
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=2            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set relativenumber
set wildmode=longest,list   " get bash-like tab completions
set cc=80                   " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set t_Co=256
set ttyfast                 " Speed up scrolling in Vim

call plug#begin()
" Global
Plug 'ayu-theme/ayu-vim'
"Plug 'projekt0n/github-nvim-theme'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'

" Searchs
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Faster development
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'ap/vim-css-color'
Plug 'preservim/nerdcommenter'
Plug 'preservim/tagbar'
Plug 'Raimondi/delimitMate'
Plug 'janko/vim-test'

" Snippets
Plug 'ervandew/supertab'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'

" Linters
Plug 'dense-analysis/ale'
Plug 'bronson/vim-trailing-whitespace'

" Ruby development
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'

" Javascript
Plug 'maxmellon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'

" Discord Presence
Plug 'stoozy/vimcord'
call plug#end()

"colorscheme github_light

set termguicolors
let ayucolor="dark"
colorscheme ayu

" Set map leader
let mapleader = ","

" no arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Indent all file
map <leader>i mmgg=G`m

" Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal! g'\"" | endif
endif

syntax enable

set splitright
set splitbelow

" Nerd tree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let NERDTreeShowHidden=1

" Fzf Mapping
nnoremap <C-p> :GFiles<Cr>

" Ruby / Rails Configuration
au BufNewFile,BufRead *.arb set filetype=ruby

" Supertab
let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0

" UtliSnip
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"

" tagbar
nmap <F8> :TagbarToggle<CR>

" Mappings for vim-test
nmap <silent> <leader>ts :TestSuite<cr>
nmap <silent> <leader>tf :TestFile<cr>
