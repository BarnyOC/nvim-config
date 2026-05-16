vim.pack.add({ "https://github.com/nvim-lua/plenary.nvim",'https://github.com/mikavilpas/yazi.nvim'})
require('yazi').setup({
  ---@type YaziConfig | {}
  opts = {
    -- if you want to open yazi instead of netrw, see below for more info
    open_for_directories = false,
    keymaps = {
      show_help = "<f1>",
    },
  },
  -- 👇 if you use `open_for_directories=true`, this is recommended
  init = function()
    -- mark netrw as loaded so it's not loaded at all.
    --
    -- More details: https://github.com/mikavilpas/yazi.nvim/issues/802
    vim.g.loaded_netrwPlugin = 1
  end,
}
)

-- Keymappings
-- vim.keymap.set({'n','v'}, 'f', "<cmd>Yazi<cr>",{ desc = 'Open yazi at the current file' })
