-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- General
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.wrap = false
vim.opt.ignorecase = true
vim.opt.path:append({ "**" })

-- Tabs
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.smarttab = true

-- Appearance
vim.opt.title = true
vim.wo.number = true
vim.opt.termguicolors = true
vim.opt.showmode = false
vim.opt.guicursor = ""
vim.opt.colorcolumn = "120"
vim.opt.cursorline = true
vim.opt.cursorlineopt = "both"
vim.opt.scrolloff = 5
vim.opt.fillchars = { eob = " " }

-- Diagnostics
vim.opt.signcolumn = "yes"
vim.diagnostic.config({
	virtual_text = true,
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = " ",
			[vim.diagnostic.severity.WARN] = " ",
			[vim.diagnostic.severity.INFO] = "󰋼 ",
			[vim.diagnostic.severity.HINT] = "󰌵 ",
		},
		numhl = {
			[vim.diagnostic.severity.ERROR] = "",
			[vim.diagnostic.severity.WARN] = "",
			[vim.diagnostic.severity.HINT] = "",
			[vim.diagnostic.severity.INFO] = "",
		},
	},
})
