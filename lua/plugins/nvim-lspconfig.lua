return {
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            vim.lsp.config("lua_ls", {
                settings = {
                    Lua = {
                        diagnostics = { globals = { "vim" } }
                    }
                }
            })
            vim.lsp.enable("lua_ls")
        end
    }
}
