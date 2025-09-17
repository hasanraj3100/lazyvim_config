local cr = require("code_runner")

cr.setup({
  filetype = {
    cpp = {
      'cd "$dir" &&',
      'g++ "$fileName" -o "$fileNameWithoutExt" &&',
      '"$dir/$fileNameWithoutExt"',
    },
    python = {
      'echo "hello"',
    },
  },

  float = {
    close_key = "<ESC>",
    border = "rounded",
  },
})
