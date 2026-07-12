-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.wrap = true
vim.opt.clipboard = "unnamedplus"
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.title = true
vim.opt.titlestring = " - Neovim"

vim.schedule(function()
  vim.opt.foldmethod = "manual"
  vim.opt.foldenable = true
  vim.opt.spell = false
end)
