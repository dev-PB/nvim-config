-- File Search
local telescope = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', telescope.find_files, {})

-- File Explorer
vim.keymap.set('n', '<C-n>', '<Cmd>NvimTreeToggle<CR>')

-- LSP
vim.keymap.set('n', 'O', vim.lsp.buf.hover, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set({'n', 'v'}, '<leader><CR>', vim.lsp.buf.code_action, {})

-- ToggleTerm
local custom_functions = require("config.custom_functions");
vim.keymap.set('n', '<C-t>', custom_functions.toggle_or_create_terminal);
