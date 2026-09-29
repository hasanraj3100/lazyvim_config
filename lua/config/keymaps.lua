-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("n", "Y", "y$", { desc = "Yank to the end of the line" })
vim.keymap.set("v", "<leader>p", '"_dP', { desc = "paste without modifying register" })
vim.keymap.set("n", "t", "<cmd>CompetiTest add_testcase<CR>", { desc = "add test case" })
vim.keymap.set("n", "rt", "<cmd>CompetiTest run<CR>", { desc = "run test cases" })

local function run_code()
  local file_extension = vim.bo.filetype
  local file_name = vim.fn.expand("%")
  local term_cmd = ""

  -- Define your commands here
  if file_extension == "python" then
    term_cmd = "python3 " .. file_name
  elseif file_extension == "cpp" or file_extension == "c" then
    term_cmd = "g++ " .. file_name .. " -o out && ./out"
  elseif file_extension == "go" then
    term_cmd = "go run " .. file_name
  elseif file_extension == "lua" then
    term_cmd = "lua " .. file_name
  else
    print("FileType not supported for runner")
    return
  end

  -- Save the file, then open a small horizontal terminal and run the command
  vim.cmd("write")
  vim.cmd("term " .. term_cmd)
  vim.cmd("startinsert") -- Put focus in the terminal
end

-- Map it to <leader>rr
vim.keymap.set("n", "<leader>rr", run_code, { desc = "Run Code in Terminal" })
