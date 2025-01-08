local cr = require("code_runner")

cr.setup({
  filetype = {
    cpp = {
      'cd "$dir" &&',
      'g++ "$fileName" -o "$fileNameWithoutExt" &&',
      '"$dir/$fileNameWithoutExt"',
    },
  },

  float = {
    close_key = "<ESC>",
    border = "rounded",
  },
})
