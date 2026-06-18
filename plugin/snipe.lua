vim.pack.add({ 'https://github.com/leath-dub/snipe.nvim' })
local snipe = require("snipe")
snipe.setup({
})
vim.keymap.set("n","<C-b>",snipe.open_buffer_menu,{desc="Open buffer snipe menu"})
