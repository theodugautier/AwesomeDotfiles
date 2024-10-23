local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

local status, packer = pcall(require, "packer")

if (not status) then
  print("Packer is not installed")
  return
end

return packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  -- appearances
  use 'projekt0n/github-nvim-theme'
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'kyazdani42/nvim-web-devicons' -- File icons
  -- use {
  --   'nvim-treesitter/nvim-treesitter',
  --   run = function() require('nvim-treesitter.install').update({ with_sync = true }) end
  -- }
  -- use { 'm-demare/hlargs.nvim' }

  -- LSP and completion
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'neovim/nvim-lspconfig' -- LSP
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-path' -- completion pathname
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'jose-elias-alvarez/null-ls.nvim' -- inject LSP diagnostics, code actions
  use 'glepnir/lspsaga.nvim' -- LSP UIs

  -- GO
  use 'ray-x/go.nvim'

  -- Snippets
  use 'L3MON4D3/LuaSnip'
  use 'honza/vim-snippets'

  -- code fasters
  use 'Raimondi/delimitMate' -- auto close colon
  use 'mattn/emmet-vim' -- emmet for vim
  use 'tpope/vim-surround' -- just tpope the GOD OF VIM
  use 'ap/vim-css-color' -- colors display
  use 'terrortylor/nvim-comment' -- comments tools
  use 'mhartington/formatter.nvim' -- format code
  use 'AndrewRadev/splitjoin.vim' -- refactor plugin

  -- Ruby development
  use 'vim-ruby/vim-ruby'
  use 'tpope/vim-rails'
  use 'tpope/vim-endwise' -- autoclose function

  -- javacript development
  use 'peitalin/vim-jsx-typescript'
  use 'pangloss/vim-javascript'
  use 'leafgarland/typescript-vim'

  -- flutter
  use 'akinsho/flutter-tools.nvim' -- lsp for flutter
  use 'dart-lang/dart-vim-plugin' -- dart highlight

  -- Elixir
  use 'elixir-editors/vim-elixir'

  -- GraphQl
  use 'jparise/vim-graphql'

  -- discord presences
  use 'andweeb/presence.nvim'

  -- IA
  use { "zbirenbaum/copilot.lua" }

  -- others utilities
  use 'nvim-telescope/telescope.nvim' -- equivalent ctrl-p, fzf
  use({ "kelly-lin/telescope-ag", requires = { { "nvim-telescope/telescope.nvim" } } }) -- silver search with telescope
  use 'windwp/nvim-autopairs' -- auto brackets pairing
  use 'lewis6991/gitsigns.nvim' -- git graphic helpers
  use 'bronson/vim-trailing-whitespace' -- detect trailing-whitespace
  use 'nvim-tree/nvim-web-devicons' -- use devicons
  use { 'nvim-tree/nvim-tree.lua', requires = { 'nvim-tree/nvim-web-devicons' } }
  use "luukvbaal/stabilize.nvim" -- to fix my fucking headache when openclosed panes
  use 'f-person/git-blame.nvim'
  use {'akinsho/git-conflict.nvim', tag = "*", config = function() -- conflict management
    require('git-conflict').setup()
  end}

  if packer_bootstrap then
    require('packer').sync()
  end
end)
