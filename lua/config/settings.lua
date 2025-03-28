-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- General
vim.opt.title = true
vim.opt.termguicolors = true
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.guicursor = ""
vim.opt.colorcolumn = "120"

-- Lines
vim.wo.number = true
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"
vim.opt.wrap = false
vim.opt.scrolloff = 5
vim.opt.fillchars = { eob = " " }

-- Tabs
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
