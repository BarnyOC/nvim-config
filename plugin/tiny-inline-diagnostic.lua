vim.pack.add({ 'https://github.com/rachartier/tiny-inline-diagnostic.nvim' })

-- Initialize the plugin with configuration
require('tiny-inline-diagnostic').setup({
    options = {
        multilines = {
            enabled = false,
            always_show = false, -- Only show messages when cursor is on the line
        },
        show_all_diags_on_cursorline = true, -- Show all diagnostics when cursor is on the line
        throttle = 20, -- Smooth cursor movement updates (in milliseconds)
    }
})

-- Disable Neovim's default virtual text to avoid conflicts
vim.diagnostic.config({ virtual_text = false })
