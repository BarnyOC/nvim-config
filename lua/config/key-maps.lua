--Leader key
vim.keymap.set("n"," ","<nop>")
vim.g.mapleader = " "

--Motions
vim.keymap.set("n","W","b",{nowait=true})

--Disable arrow key and mouse
vim.keymap.set("","<up>","<nop>",{noremap=true})
vim.keymap.set("","<down>","<nop>",{noremap=true})
vim.keymap.set("i","<up>","<nop>",{noremap=true})
vim.keymap.set("i","<down>","<nop>",{noremap=true})

--File Navigation
vim.keymap.set("n","<Tab>",function()
    require("mini.files").open()
end,{desc="Navigate files",nowait=true})
    
vim.keymap.set("n","<leader><Tab>",function()
    require("mini.files").open(vim.fn.stdpath("config"))
end,{desc="Navigate to config",nowait=true})

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
vim.keymap.set("n","<C-q>",":bd<cr>",{nowait=true,desc="Quit buffer"})
vim.keymap.set("n","<leader>u",":u0<cr>",{nowait=true,desc="Undo all changes in buffer"})
vim.keymap.set("n","<leader><ESC><ESC>",":q!<cr>",{nowait=true,desc="Quit Neovim"})
vim.keymap.set("n","<C-s>",":w<cr>",{nowait=true,desc="Write buffer"})

--Splits
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", ":split<CR>", { desc = "Split window horizontally" })
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "Increase window width" })

-- Quick config editing
vim.keymap.set("n", "<leader>rl", ":so $MYVIMRC<CR>", { desc = "Reload config" })

-- Buffer Navigation
vim.keymap.set("n","<S-h>",":bprevious<CR>",{nowait=true,silent=true})
vim.keymap.set("n","<S-l>",":bnext<CR>",{nowait=true,silent=true})

-- Encapsulate
vim.keymap.set("n",'<Leader>"c','0i"<ESC>A"<ESC>'   ,{desc = 'Surround line with ""'})
vim.keymap.set("n",'<Leader>"w','ciw""<ESC>P'       ,{desc = 'Surround word with ""'})
vim.keymap.set("n",'<Leader>"$','c$""<ESC>P'        ,{desc = 'Surround cursor to end of line with ""'})

vim.keymap.set("n",'<Leader>(c','0i(<ESC>A)<ESC>',{desc = 'Surround line with ()'})
vim.keymap.set("n",'<Leader>($','c$()<ESC>P',{desc = 'Surround word with ()'})
vim.keymap.set("n",'<Leader>(w','ciw()<ESC>P',{desc = 'Surround cursor to end of line with ()'})

vim.keymap.set("n",'<Leader>[c','0i[<ESC>A]<ESC>',{desc = 'Surround line with []'})
vim.keymap.set("n",'<Leader>[$','c$[]<ESC>P',{desc = 'Surround word with []'})
vim.keymap.set("n",'<Leader>[w','ciw[]<ESC>P',{desc = 'Surround cursor to end of line with []'})

vim.keymap.set("n",'<Leader>{c','0i{<ESC>A}<ESC>',{desc = 'Surround line with {}'})
vim.keymap.set("n",'<Leader>{$','c${}<ESC>P',{desc = 'Surround word with {}'})
vim.keymap.set("n",'<Leader>{w','ciw{}<ESC>P',{desc = 'Surround cursor to end of line with {}'})
