require("config.lazy")

vim.api.nvim_create_autocmd("FileType", {
   callback = function()
        pcall(vim.treesitter.start)
    end
})

vim.cmd [[colorscheme cyberdream]]
require("config.options")
require("config.key-maps")
require("config.godot")
