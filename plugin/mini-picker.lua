vim.pack.add({ 'https://github.com/nvim-mini/mini.icons','https://github.com/nvim-mini/mini.pick' })
require('mini.pick').setup({
})

vim.keymap.set('n', '<C-b>', MiniPick.builtin.buffers, { desc = 'Find buffers' })
vim.keymap.set('n', '<C-f>', MiniPick.builtin.files, { desc = 'Find files' })
