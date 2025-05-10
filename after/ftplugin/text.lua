vim.opt_local.wrap = true
vim.opt_local.linebreak = true
vim.opt_local.colorcolumn = ""
vim.opt_local.breakindent = true

vim.keymap.set({ "n", "v" }, "j", "gj", { remap = true, silent = true })
vim.keymap.set({ "n", "v" }, "k", "gk", { remap = true, silent = true })
