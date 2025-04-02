-- File Search
local telescope = require("telescope.builtin")
vim.keymap.set('n', '<C-t>', telescope.find_files, { desc = "Find Files" })
vim.keymap.set('n', '<Leader>t', telescope.buffers, { desc = "Find Buffers" })

-- File Explorer
vim.keymap.set('n', '<C-b>', '<Cmd>NvimTreeToggle<CR>')

-- LSP
vim.keymap.set('n', '<M-i>', vim.lsp.buf.hover, { desc = "Hover" })
vim.keymap.set('n', '<F12>', vim.lsp.buf.definition, { desc = "Go to Definition"} )
vim.keymap.set({'n', 'v'}, '<M-.>', vim.lsp.buf.code_action, { desc = "Code Actions"} )
vim.keymap.set({'n', 'i'}, '<S-F12>', telescope.lsp_references, { desc = "Find References"} )

-- Open ToggleTerm
local custom_functions = require("config.custom_functions");
vim.keymap.set('n', '<C-n>', custom_functions.toggle_or_create_terminal, { desc = "Open the terminal" });

-- Exit ToggleTerm
vim.api.nvim_set_keymap('t', '<C-n>', '<C-\\><C-n>:ToggleTerm<CR>', { noremap = true, silent = true })

-- Comments, <C-_> = <C-/>
vim.keymap.set('v', '<C-_>', "gc", { remap = true, silent = true, desc = "Toggle comment" })
vim.keymap.set('n', '<C-_>', "gcc", { remap = true, silent = true, desc = "Toggle comment" })

-- Delete last word in insert mode, <C-H> = <C-BS>
vim.keymap.set('i', '<C-H>', "<C-W>", { noremap = true, silent = true })

-- Move text up/down
vim.keymap.set('n', '<M-k>', ':m -2<CR>', { noremap = true, silent = true, desc = "Move line up" })
vim.keymap.set('n', '<M-j>', ':m +1<CR>', { noremap = true, silent = true, desc = "Move line down" })
vim.keymap.set('v', '<M-k>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true, desc = "Move selection up" })
vim.keymap.set('v', '<M-j>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true, desc = "Move selection down" })
vim.keymap.set('i', '<M-j>', '<Cmd>:m +1<CR>', { noremap = true, silent = true, desc = "Move line down" })
vim.keymap.set('i', '<M-k>', '<Cmd>:m -2<CR>', { noremap = true, silent = true, desc = "Move line up" })

-- Indent selection & keep selected
vim.keymap.set('v', '<Tab>', '>gv', { noremap = true, silent = true, desc = "Indent selection" })
vim.keymap.set('v', '<S-Tab>', '<gv', { noremap = true, silent = true, desc = "Unindent selection" })

-- Window navigation
vim.keymap.set('n', '<Leader>h', '<C-w>h', { noremap = true, silent = true, desc = "Focus left window" })
vim.keymap.set('n', '<Leader>j', '<C-w>j', { noremap = true, silent = true, desc = "Focus below window" })
vim.keymap.set('n', '<Leader>k', '<C-w>k', { noremap = true, silent = true, desc = "Focus above window" })
vim.keymap.set('n', '<Leader>l', '<C-w>l', { noremap = true, silent = true, desc = "Focus right window" })

-- Resize windows
vim.keymap.set('n', '<M-Up>', ':resize +2<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<M-Down>', ':resize -2<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<M-Left>', ':vertical resize -2<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<M-Right>', ':vertical resize +2<CR>', { noremap = true, silent = true })

-- Save shortcut, :update only saves if there's been changes
vim.keymap.set('n', '<C-s>', ':update<CR>', { noremap = true, silent = true })
vim.keymap.set('i', '<C-s>', '<Cmd>:update<CR>', { noremap = true, silent = true })
