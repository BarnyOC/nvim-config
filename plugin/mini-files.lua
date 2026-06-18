
vim.pack.add({ 'https://github.com/nvim-mini/mini.files' })
local MiniFiles = require("mini.files")
MiniFiles.setup({})
local minifiles_toggle = function(...)
  if not MiniFiles.close() then MiniFiles.open(...) end
end

vim.keymap.set("n","<C-y>",minifiles_toggle,{desc="Open file manager"})
