-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- autofocus terminal 'insert mode'
vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "*",
  callback = function()
    vim.cmd("startinsert")
  end,
})

-- change #include<13/iostream> to #include<iostream>
vim.api.nvim_create_user_command("CppCode", function()
  if vim.bo.filetype ~= "cpp" then
    print("Not a C++ file")
    return
  end
  vim.cmd([[%g/^#include/s/13\///g]])
end, {})
