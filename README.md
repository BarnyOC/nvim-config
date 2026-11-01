# nvim-config

Personal Neovim configuration.

## Requirements

- Neovim 0.12 or newer (uses `vim.pack` and native completion)
- `git`
- A Nerd Font for the statusline and file icons

## Install

```sh
git clone https://github.com/BarnyOC/nvim-config.git ~/.config/nvim
nvim
```

Plugins are declared with `vim.pack` and pinned in `nvim-pack-lock.json`;
Neovim installs them on first launch. LSP servers are managed by Mason.

## Layout

| Path | Purpose |
|---|---|
| `init.lua` | Entry point |
| `lua/config/` | Options, keymaps, completion, Godot integration |
| `plugin/` | Plugin declarations and setup |
| `lsp/` | Native LSP server configuration |
| `nvim-pack-lock.json` | Pinned plugin revisions |

## License

Released under the [MIT License](LICENSE).

Copyright (c) 2025-2026 Barnaby O'Callaghan.
