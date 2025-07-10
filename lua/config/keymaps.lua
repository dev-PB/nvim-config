-- File Search
local fzf = require("fzf-lua")
vim.keymap.set("n", "<Leader>f", fzf.files, { desc = "Find Files" })
vim.keymap.set("n", "<Leader>b", fzf.buffers, { desc = "Find Buffers" })

-- LSP
vim.keymap.set("n", "<Leader>k", vim.lsp.buf.hover, { desc = "Hover" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
vim.keymap.set({ "n", "i" }, "grr", fzf.lsp_references, { desc = "Find References" })
vim.keymap.set("n", "<Leader>a", fzf.lsp_code_actions, { desc = "Code Actions" })

-- Comments, <C-_> = <C-/>
vim.keymap.set("v", "<Leader>c", "gc", { remap = true, silent = true, desc = "Toggle comment" })
vim.keymap.set("n", "<Leader>c", "gcc", { remap = true, silent = true, desc = "Toggle comment" })

-- Delete last word, <C-H> = <C-BS>
vim.keymap.set("i", "<C-H>", "<C-W>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-H>", "db", { noremap = true, silent = true })

-- Move text up/down
vim.keymap.set({ "n", "i" }, "<M-j>", "<Cmd>m +1<CR>", { noremap = true, silent = true, desc = "Move line down" })
vim.keymap.set({ "n", "i" }, "<M-k>", "<Cmd>m -2<CR>", { noremap = true, silent = true, desc = "Move line up" })
vim.keymap.set("v", "<M-k>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true, desc = "Move selection up" })
vim.keymap.set("v", "<M-j>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true, desc = "Move selection down" })

-- Indent selection & keep selected
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true, desc = "Indent selection" })
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true, desc = "Unindent selection" })

-- Window navigation
vim.keymap.set("n", "<Leader>wh", "<C-w>h", { noremap = true, silent = true, desc = "Focus left window" })
vim.keymap.set("n", "<Leader>wj", "<C-w>j", { noremap = true, silent = true, desc = "Focus below window" })
vim.keymap.set("n", "<Leader>wk", "<C-w>k", { noremap = true, silent = true, desc = "Focus above window" })
vim.keymap.set("n", "<Leader>wl", "<C-w>l", { noremap = true, silent = true, desc = "Focus right window" })

-- Resize windows
vim.keymap.set("n", "<M-Up>", ":resize +2<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-Down>", ":resize -2<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-Left>", ":vertical resize -2<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-Right>", ":vertical resize +2<CR>", { noremap = true, silent = true })

-- Go to start/end of line
vim.keymap.set({ "n", "v" }, "gh", "0", { silent = true, desc = "Go to start of line" })
vim.keymap.set({ "n", "v" }, "gl", "$", { silent = true, desc = "Go to end of line " })

-- Go to next/previous buffers
vim.keymap.set("n", "gn", "<C-i>", { noremap = true, silent = true, desc = "Go next" })
vim.keymap.set("n", "gp", "<C-o>", { noremap = true, silent = true, desc = "Go previous" })

-- Redo
vim.keymap.set("n", "U", "<C-r>", { noremap = true, silent = true, desc = "Redo" })
