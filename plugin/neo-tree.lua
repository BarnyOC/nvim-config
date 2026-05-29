vim.pack.add({
  {
    src = 'https://github.com/nvim-neo-tree/neo-tree.nvim',
    version = vim.version.range('3')
  },
  -- dependencies
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/MunifTanjim/nui.nvim",
  -- optional, but recommended
  "https://github.com/nvim-tree/nvim-web-devicons",
})

require("neo-tree").setup({})
vim.keymap.set('n', '<C-y>', ":Neotree toggle reveal left<CR>", { nowait = true, desc = 'Toggle neo-tree' })
vim.keymap.set('n', 'q', ":Neotree close<CR>", { desc = 'Toggle neo-tree' })
