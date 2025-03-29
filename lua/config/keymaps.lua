-- File Search
local telescope = require("telescope.builtin")
vim.keymap.set('n', '<C-t>', telescope.find_files, {})
vim.keymap.set('n', '<Leader>t', telescope.buffers, {})

-- File Explorer
vim.keymap.set('n', '<C-b>', '<Cmd>NvimTreeToggle<CR>')

-- LSP
vim.keymap.set('n', '<M-i>', vim.lsp.buf.hover, {})
vim.keymap.set('n', '<F12>', vim.lsp.buf.definition, {})
vim.keymap.set({'n', 'v'}, '<M-.>', vim.lsp.buf.code_action, {})
vim.keymap.set({'n', 'i'}, '<S-F12>', telescope.lsp_references, {})

-- ToggleTerm
local custom_functions = require("config.custom_functions");
vim.keymap.set('n', '<C-n>', custom_functions.toggle_or_create_terminal);
vim.api.nvim_set_keymap('t', '<C-n>', '<C-\\><C-n>:ToggleTerm<CR>', {noremap = true, silent = true})
