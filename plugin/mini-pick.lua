vim.pack.add({ 'https://github.com/nvim-mini/mini.pick' })
local MiniPick = require("mini.pick")
MiniPick.setup({})
vim.keymap.set("n","<C-f>",MiniPick.builtin.files,{desc="Fuzzy find files"})
