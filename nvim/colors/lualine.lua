local colors = {
  bg = "#282828",
  fg = "#fbf1c7",
  yellow = "#fabd2f",
  cyan = "#83a598",
  green = "#b8bb26",
  red = "#fb4934",
  gray = "#3c3836",
}

return {
  normal = {
    a = { bg = colors.green, fg = colors.bg, gui = "bold" },
    b = { bg = colors.gray, fg = colors.fg },
    c = { bg = colors.bg, fg = colors.fg },
  },
  insert = {
    a = { bg = colors.cyan, fg = colors.bg, gui = "bold" },
  },
  visual = {
    a = { bg = colors.yellow, fg = colors.bg, gui = "bold" },
  },
  replace = {
    a = { bg = colors.red, fg = colors.bg, gui = "bold" },
  },
  inactive = {
    a = { bg = colors.bg, fg = colors.gray },
    b = { bg = colors.bg, fg = colors.gray },
    c = { bg = colors.bg, fg = colors.gray },
  },
}
