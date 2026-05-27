-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- floating terminal 'center' keymap
vim.keymap.set({ "n", "t" }, "<c-_>", function()
  Snacks.terminal.focus(nil, {
    cwd = LazyVim.root(),
    win = {
      position = "float",
      border = "rounded",
      width = 0.9,
      height = 0.9,
    },
  })
end, { desc = "which_key_ignore" })

-- Alt+i to enter normal mode
-- vim.keymap.set("i", "<A-i>", "<Esc>", { desc = "Exit insert mode" })

-- ctrl+s save/write all files
vim.keymap.set("n", "<C-s>", "<cmd>wa<cr>", { desc = "Save all files" })
