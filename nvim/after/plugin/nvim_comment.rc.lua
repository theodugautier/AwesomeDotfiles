local ok, nvim_comment = pcall(require, "nvim_comment")
if (not ok) then return end

nvim_comment.setup {
  comment_empty = false
}
