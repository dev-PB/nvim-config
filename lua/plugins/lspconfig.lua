return {
    {
        "williamboman/mason.nvim",

        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = { "williamboman/mason.nvim" },

        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    -- "pyright",
                    -- "rust_analyzer",
                    -- "eslint",
                },
            })

            -- Hook up completions to the LSPs, see autocomplete.lua
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            require("mason-lspconfig").setup_handlers({
                -- Default LSP handler
                function(ls_name)
                    require("lspconfig")[ls_name].setup({
                        capabilities = capabilities,
                    })
                end,

                -- Language specific handlers
                -- ["rust-analyzer"] = function()
                --    require("rust-tools").setup({})
                -- end,
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
    }
}
