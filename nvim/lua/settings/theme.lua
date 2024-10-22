require('github-theme').setup({
  options = {
    styles = {
      functions = "NONE"
    },
    darken = { -- Darken floating windows and sidebar-like windows
      floats = false,
      sidebars = {
        enable = true,
        list = {"qf", "vista_kind", "terminal", "packer"}, -- Apply dark background to specific windows
      },
    },
  },
  palettes = {
    all = {
    -- Each palette defines these colors:
    --   black, gray, blue, green, magenta, pink, red, white, yellow, cyan
    --
    -- These colors have 2 shades: base, and bright

    -- Passing a string sets the base
    hint = "orange",
    error = "#ff0000"
  },
  },
})

vim.cmd[[colorscheme github_dark_high_contrast]]
