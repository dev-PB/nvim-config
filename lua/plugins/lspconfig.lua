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
			        "pylint",
                },
            })

            require("mason-lspconfig").setup_handlers({
                -- Default LSP handler
                function(ls_name)
                    require("lspconfig")[ls_name].setup({})
                end,

                -- Language specific handlers
                ["rust-analyzer"] = function()
                    require("rust-tools").setup({})
                end,
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
    }
}
