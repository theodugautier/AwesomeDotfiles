local ok, treesitter = pcall(require, 'nvim-treesitter')
if (not ok) then return end

require'nvim-treesitter.configs'.setup {
 markid = {
    enable = true,
    colors = false
  },
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
  matchup = {
    enable = true
  }
}

