return
{
    {
      'saghen/blink.cmp',
      dependencies = { 'rafamadriz/friendly-snippets' },
      version = '1.*',
      ---@module 'blink.cmp'
      ---@type blink.cmp.Config
      opts = {
        -- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
        -- 'super-tab' for mappings similar to vscode (tab to accept)
        -- 'enter' for enter to accept
        -- 'none' for no mappings
        keymap = { preset = 'super-tab' },
        appearance = {
          nerd_font_variant = 'mono'
        },
        completion = { 
          documentation = { auto_show = true, treesitter_highlighting = true},
          accept = { auto_brackets = {enabled = true}},
          menu = {
            draw = {
              treesitter = {"lsp"},
              columns = { 
                          { "label", "label_description", gap = 1 }, { "kind_icon",gap = 1 ,"kind" }
              }
            } 
          },
        },
        signature = {enabled = true},
        sources = {
          default = { 'lsp', 'path', 'snippets', 'buffer' },
        },
        fuzzy = { implementation = "prefer_rust_with_warning" }
      },
      opts_extend = { "sources.default" }
    }
}
