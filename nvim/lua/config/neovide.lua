if not vim.g.neovide then
  return
end

if vim.g.neovide then
  vim.o.guifont = "JetBrainsMono Nerd Font:h15"

  vim.g.neovide_cursor_animation_length = 0.09
  vim.g.neovide_cursor_trail_size = 1.0
  vim.g.neovide_cursor_antialiasing = true
  vim.g.neovide_cursor_animate_in_insert_mode = true
  vim.g.neovide_cursor_animate_command_line = true
  vim.g.neovide_scroll_animation_length = 0.15
  vim.g.neovide_hide_mouse_when_typing = true
  vim.g.neovide_remember_window_size = true
  vim.g.neovide_cursor_vfx_mode = "torpedo"
  vim.g.neovide_padding_top = 5
end
