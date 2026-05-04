--vim.cmd [[colorscheme eldritch]]
require("config.options")
require("config.key-maps")
--require("config.godot")

-- Enable native LSP servers
vim.lsp.enable("lua_ls")
vim.lsp.enable("gdscript") -- Custom Godot LSP
