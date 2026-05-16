-- Mason + Mason-lspconfig + nvim-lspconfig setup
vim.pack.add({
    { src = "https://github.com/mason-org/mason.nvim" },
    { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
    { src = "https://github.com/neovim/nvim-lspconfig" },
})

require("mason").setup()

require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls" },
    automatic_enable = true, -- auto-enable Mason-installed LSPs (default)
})
