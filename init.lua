require("config.lazy")
vim.cmd [[colorscheme github_dark]]

require("config.options")
require("config.key-maps")


vim.api.nvim_create_autocmd("FileType", {
   callback = function()
        pcall(vim.treesitter.start)
    end
})

