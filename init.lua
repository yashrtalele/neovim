vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", ":Ex<CR>", { noremap = true, silent = true, desc = "Open file explorer (:Ex)" })
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.incsearch = true
vim.opt.clipboard = "unnamedplus"
vim.opt.termguicolors = true
require("config.lazy")
