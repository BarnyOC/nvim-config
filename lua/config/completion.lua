-- Native Neovim 0.12 completion (barest setup: LSP + current buffer).

vim.o.autocomplete = true
vim.o.completeopt = 'menuone,popup,nearest,longest,fuzzy'
vim.o.complete = '.^12,o'

-- Ensure LSP omnifunc is wired up (it usually is on attach, but be safe).
vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'Native completion: set LSP omnifunc',
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client and client:supports_method('textDocument/completion') then
      vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
    end
  end,
})

-- Tab/S-Tab cycle through items; accept with C-y, dismiss with C-e (stock).
-- C-Space triggers manually; C-k shows signature help.
vim.keymap.set('i', '<Tab>', function()
  if vim.fn.pumvisible() == 1 then
    return '<C-n>'
  end
  return '<Tab>'
end, { expr = true, silent = true })

vim.keymap.set('i', '<S-Tab>', function()
  if vim.fn.pumvisible() == 1 then
    return '<C-p>'
  end
  return '<S-Tab>'
end, { expr = true, silent = true })

vim.keymap.set('i', '<C-Space>', function()
  vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<C-x><C-o>', true, true, true), 'n')
end, { desc = 'Trigger LSP completion' })

vim.keymap.set('i', '<C-k>', function()
  vim.lsp.buf.signature_help()
end, { desc = 'Signature help' })
