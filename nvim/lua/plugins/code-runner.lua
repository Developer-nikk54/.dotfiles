return {
  "CRAG666/code_runner.nvim",
  config = function()
    require("code_runner").setup({
      mode = "float",
      float = {
        border = "rounded",
        height = 0.9,
        width = 0.9,
      },
      filetype = {
        c = "cd $dir && clear && gcc $fileName -o $fileNameWithoutExt && ./$fileNameWithoutExt",
        cpp = "cd $dir && clear && g++ $fileName -o $fileNameWithoutExt && ./$fileNameWithoutExt",
        python = "python3 $fileName",
        javascript = "node $fileName",
      },
    })
  end,
}
