-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>r", function()
  local dir = vim.fn.expand("%:p:h")    -- ファイルのディレクトリ
  local file = vim.fn.expand("%:t")      -- ファイル名
  local cmd = table.concat({
    "cd " .. dir,
    "&& g++ -std=c++20 -g -fsanitize=undefined,address -I//home/y_midori/cp/library",
    file,
    "&& ./a.out",
  }, " ")
  vim.cmd("term " .. cmd)
end, { desc = "Compile & Run C++ (a.out)" })

vim.keymap.set("n", "<leader>ob", function()
  local file = vim.fn.expand("%:p")
  local cmd = table.concat({
    "bash -lc '",
    "export PATH=\"$HOME/.pyenv/bin:$PATH\" &&",
    "eval \"$(pyenv init -)\" &&",
    "cd ~/cp/library &&",
    "oj-bundle " .. file .. " | iconv -t utf-16le | clip.exe",
    "'"
  }, " ")

  os.execute(cmd)
  print("oj-bundle copied to clipboard!")
end, { desc = "Run oj-bundle and copy to clipboard" })
