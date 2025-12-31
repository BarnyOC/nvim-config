vim.g.mapleader = " "

vim.keymap.set("n","-",function()
  require("oil").open()
end)

--Writing/Quitting
vim.keymap.set("n","<leader>q",":q<cr>")
vim.keymap.set("n","<leader>Q",":q!<cr>")
vim.keymap.set("n","<leader>w",":w<cr>")
vim.keymap.set("n","<leader>W",":wq<cr>")

--Splits
vim.keymap.set("n","<leader>h",":split<cr>")
vim.keymap.set("n","<leader>v",":vsplit<cr>")
