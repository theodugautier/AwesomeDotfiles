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

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  -- appearances
  use 'folke/tokyonight.nvim' -- theme
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'kyazdani42/nvim-web-devicons' -- File icons

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
  use 'L3MON4D3/LuaSnip' -- snippets

  -- others utilities
  use 'nvim-telescope/telescope.nvim' -- equivalent ctrl-p, fzf
  use({ "kelly-lin/telescope-ag", requires = { { "nvim-telescope/telescope.nvim" } } }) -- silver search with telescope
  use 'windwp/nvim-autopairs' -- auto brackets pairing
  use 'lewis6991/gitsigns.nvim' -- git graphic helpers
  use 'bronson/vim-trailing-whitespace' -- detect trailing-whitespace
  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "MunifTanjim/nui.nvim"
    }
  }

  -- code fasters
  use 'Raimondi/delimitMate' -- auto close colon
  use 'janko/vim-test' -- launch tests in vim
  use 'mattn/emmet-vim' -- emmet for vim
  use 'tpope/vim-surround' -- just tpope the GOD OF VIM
  use 'ap/vim-css-color' -- colors display
  use 'terrortylor/nvim-comment' -- comments tools

  -- Ruby development
  use 'vim-ruby/vim-ruby'
  use 'tpope/vim-rails'
  use 'tpope/vim-endwise' -- autoclose function

  -- javacript development
  use 'peitalin/vim-jsx-typescript'
  use 'pangloss/vim-javascript'
  use 'leafgarland/typescript-vim'

  -- discord presences
  use 'jparise/vim-graphql'

  -- discord presences
  use 'stoozy/vimcord'

  if packer_bootstrap then
    require('packer').sync()
  end
end)
