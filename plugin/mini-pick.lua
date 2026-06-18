vim.pack.add({ 'https://github.com/nvim-mini/mini.pick' })
local MiniPick = require("mini.pick")
MiniPick.setup({
    mappings = {
    move_down = "<Tab>",
    move_up = "<S-Tab>",
    toggle_info ="",
    toggle_preview="",
    }})
vim.keymap.set("n","<C-f>",MiniPick.builtin.files,{desc="Fuzzy find files"})
vim.keymap.set("n","<C-g>",MiniPick.builtin.grep_live,{desc="Grep files"})
vim.keymap.set("n","<C-b>",MiniPick.builtin.buffers,{desc="Fuzzy find buffers"})
