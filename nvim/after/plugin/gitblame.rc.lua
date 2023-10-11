local ok, _ = pcall(require, "gitblame")
if (not ok) then return end

require('gitblame').setup {
  --Note how the `gitblame_` prefix is omitted in `setup`
  enabled = false,
  display_virtual_text = false,
  message_template = '<author> • <date>',
  date_format = '%r'
}
