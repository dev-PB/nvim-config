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

-- ToggleTerm
local custom_functions = require("config.custom_functions");
vim.keymap.set('n', '<C-n>', custom_functions.toggle_or_create_terminal, { desc = "Open the terminal"} );
vim.api.nvim_set_keymap('t', '<C-n>', '<C-\\><C-n>:ToggleTerm<CR>', {noremap = true, silent = true})

-- Comments
vim.keymap.set('v', '<C-_>', "gc", { remap = true, desc = "Toggle comment" })
vim.keymap.set('n', '<C-_>', "gcc", { remap = true, desc = "Toggle comment" })