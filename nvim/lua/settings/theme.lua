require('github-theme').setup({
  colorscheme = "dark_default",
  options = {
    darken = {
      enabled = true,
      sidebars = {
        list = {"qf", "vista_kind", "terminal", "packer"}
      }
    },
    styles = {
      comments = 'italic',
      functions = 'NONE',
      keywords = 'bold',
      variables = 'NONE',
      conditionals = 'NONE',
      constants = 'NONE',
      numbers = 'NONE',
      operators = 'NONE',
      strings = 'NONE',
      types = 'NONE',
    }
  },
  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  palettes = {
    all = {
      hint = "orange",
      error = "#ff0000"
    }
  },

  groups = {
    all = {
      DiagnosticHint = {link = "LspDiagnosticsDefaultHint"},
      -- this will remove the highlight groups
      TSField = {},
    }
  }
})

vim.cmd[[colorscheme github_dark_high_contrast]]
