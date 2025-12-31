--lsp plugins
--vim.pack.add({
--    {src = "https://github.com/neovim/nvim-lspconfig"},
--    {src = "https://github.com/mason-org/mason.nvim"},
--    {src = "https://github.com/mason-org/mason-lspconfig.nvim"},
--    {src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim"},
--  })
--
--  require("mason").setup()
--  require("mason-lspconfig").setup()
--  require("mason-tool-installer").setup({
--  ensure_installed = {"lua_ls","jedi_language_server","sqylls","stylua"}
--  })

require("config.options")
require("config.lazy")
require("config.key-maps")

vim.cmd [[colorscheme onedark]]




vim.api.nvim_create_autocmd("FileType", {
   callback = function()
        pcall(vim.treesitter.start)
    end
})

