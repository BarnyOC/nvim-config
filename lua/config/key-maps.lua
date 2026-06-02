--Leader key
vim.keymap.set("n"," ","<nop>")
vim.g.mapleader = " "

--Disable arrow key and mouse
vim.keymap.set("","<up>","<nop>",{noremap=true})
vim.keymap.set("","<down>","<nop>",{noremap=true})
vim.keymap.set("i","<up>","<nop>",{noremap=true})
vim.keymap.set("i","<down>","<nop>",{noremap=true})

--Screen navigation
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result (centered)" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result (centered)" })
vim.keymap.set("n", "J", "<C-d>zz", { desc = "Half page down (centered)" })
vim.keymap.set("n", "K", "<C-u>zz", { desc = "Half page up (centered)" })

--Yanking
vim.keymap.set("n", "Y", "y$", { desc = "Yank to end of line" })

--Undo/Redo
vim.keymap.set("n", "r", "<C-r>", { desc = "Redo" })
vim.keymap.set("n", "U", "u0<CR>", { silent = true, desc = "Undo all" })
--Writing/Quitting
vim.keymap.set("n","<C-q>",":bd<cr>",{nowait=true,desc="Quit buffer"})
vim.keymap.set("n","<Leader><ESC>",":q!<cr>",{nowait=true,desc="Quit Neovim"})
vim.keymap.set("n","<C-s>",":w<cr>",{nowait=true,desc="Write buffer"})

--Splits
vim.keymap.set("n", "s", ":vsplit<CR>", { desc = "Split window vertically" })
vim.keymap.set("n", "S", ":split<CR>", { desc = "Split window horizontally" })
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-Left>", ":vertical resize +2<CR>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-Right>", ":vertical resize -2<CR>", { desc = "Increase window width" })

-- Buffer Navigation
vim.keymap.set("n","<S-h>",":bprevious<CR>",{nowait=true,silent=true})
vim.keymap.set("n","<S-l>",":bnext<CR>",{nowait=true,silent=true})

