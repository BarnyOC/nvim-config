--Leader key
vim.g.mapleader = " "

--Disable arrow key and mouse
vim.keymap.set("","<up>","<nop>",{noremap=true})
vim.keymap.set("","<down>","<nop>",{noremap=true})
vim.keymap.set("i","<up>","<nop>",{noremap=true})
vim.keymap.set("i","<down>","<nop>",{noremap=true})

--Oil
vim.keymap.set("n","<leader>h",function()
  require("oil").open()
end)

vim.keymap.set("n","<leader>cf",function()
    require("oil").open(vim.fn.stdpath("config"))
end)
--Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

--Screen navigation
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result (centered)" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result (centered)" })
vim.keymap.set("n", "J", "<C-d>zz", { desc = "Half page down (centered)" })
vim.keymap.set("n", "K", "<C-u>zz", { desc = "Half page up (centered)" })

--Yanking
vim.keymap.set("n", "Y", "y$", { desc = "Yank to end of line" })

--Writing/Quitting
vim.keymap.set("n","<leader>q",":bd<cr>",{nowait=true,desc="Quit buffer"})
vim.keymap.set("n","<leader>u",":u0<cr>",{nowait=true,desc="Undo all changes in buffer"})
vim.keymap.set("n","<leader><ESC><ESC>",":q!<cr>",{nowait=true,desc="Quit Neovim"})
vim.keymap.set("n","<leader>w",":w<cr>",{nowait=true,desc="Write buffer"})

--Splits
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", ":split<CR>", { desc = "Split window horizontally" })
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "Increase window width" })

--Terminal
vim.keymap.set("n","<leader>tr",":windo terminal<CR>")
vim.keymap.set("t","<esc>","<C-\\><C-n>")

--Diagnostics
--vim.keymap.set("n","<C-i>",":lua vim.diagnostic.open_float()<cr>")

-- Quick config editing
vim.keymap.set("n", "<leader>rl", ":so $MYVIMRC<CR>", { desc = "Reload config" })

-- Buffer Navigation
vim.keymap.set("n",",",":bprevious<CR>",{nowait=true,silent=true})
vim.keymap.set("n",".",":bnext<CR>",{nowait=true,silent=true})
