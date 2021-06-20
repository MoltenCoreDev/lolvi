-- misc/init.lua

vim.g.mapleader = ' '

-- thanks dank (https://github.com/DanKGooGLy) -- this is the stolen part
-- Tabs & more misc
vim.o.autoindent = true
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.showtabline = 2
vim.o.smartindent = true
vim.o.smarttab = true
vim.o.softtabstop = 4
vim.o.tabstop = 4
vim.o.autoread = true
vim.o.backup = false
vim.o.swapfile = false

vim.o.mouse = "nv"
vim.o.ignorecase = true
vim.nocompatible = true

vim.o.number = true
vim.o.relativenumber = true

vim.cmd("colorscheme gruvbox") -- This is the opinionated part
