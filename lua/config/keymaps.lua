-- Setting up leader and localleader, note that these should be setup before loading lazy.nvim
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Change j and k to move based on visual lines unless you use a number with them
vim.api.nvim_set_keymap("n", "j", "v:count ? 'j' : 'gj'", { noremap = true, expr = true })
vim.api.nvim_set_keymap("n", "k", "v:count ? 'k' : 'gk'", { noremap = true, expr = true })
