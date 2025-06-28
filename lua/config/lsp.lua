vim.lsp.enable("lua_ls")
vim.lsp.enable("rust_analyzer")
vim.lsp.enable("pyright")
vim.lsp.enable("ts_ls")

vim.env.PATH = vim.env.PATH .. ";C:/roslyn_lsp/"
vim.lsp.enable("roslyn_ls")
