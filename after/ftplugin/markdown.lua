vim.opt_local.wrap = true
vim.opt_local.linebreak = true
vim.opt_local.colorcolumn = ""
vim.opt_local.breakindent = true
vim.opt_local.number = false

vim.keymap.set({ "n", "v" }, "j", "gj", { silent = true })
vim.keymap.set({ "n", "v" }, "k", "gk", { silent = true })
