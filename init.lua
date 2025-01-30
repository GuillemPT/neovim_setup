vim.opt.tabstop = 4       -- Un tab equivale a 2 espacios
vim.opt.shiftwidth = 4    -- Número de espacios para indentación automática
vim.opt.softtabstop = 4   -- Número de espacios que se insertan al presionar <Tab>
vim.opt.expandtab = true  -- Convierte los tabs en espacios
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"
vim.g.mapleader = " "
vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-s>", "<Esc>:w<CR>a", { noremap = true, silent = true })

require("config.lazy")
