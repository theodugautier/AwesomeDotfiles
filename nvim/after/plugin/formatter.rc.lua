local ok, _ = pcall(require, 'formatter')
if (not ok) then return end

local util = require "formatter.util"

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup {
  -- Enable or disable logging
  logging = true,
  -- Set the log level
  log_level = vim.log.levels.WARN,
  -- All formatter configurations are opt-in
  filetype = {
    ruby = {
      function()
        return {
          exe = 'bundle exec rubocop',
          args = {
            '--fix-layout',
            '--stdin',
            util.escape_path(util.get_current_buffer_file_name()),
            '--format',
            'files',
            '|',
            "awk 'f; /^====================$/{f=1}'",
          },
          stdin = true,
        }
      end
    }
  }
}

