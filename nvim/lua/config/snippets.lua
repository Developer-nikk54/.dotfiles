-- my custom snippet commands
--
-- cpp
vim.api.nvim_create_user_command("CppSnip", function()
  local cpp = {
    "#include <iostream>",
    "",
    "using namespace std;",
    "",
    "int main() {",
    "  ",
    "  return 0;",
    "}",
  }

  vim.api.nvim_buf_set_lines(0, 0, -1, false, cpp)
  vim.api.nvim_win_set_cursor(0, { 8, 2 })
end, {})

-- css
vim.api.nvim_create_user_command("CssSnip", function()
  local css = {
    "*{",
    "   margin:0;",
    "   padding:0;",
    "   box-sizing:border-box;",
    "}",
    "html,body{",
    "   height:100%;",
    "   width:100%;",
    "}",
    "",
  }

  vim.api.nvim_buf_set_lines(0, 0, -1, false, css)
  vim.api.nvim_win_set_cursor(0, { 10, 0 })
end, {})
