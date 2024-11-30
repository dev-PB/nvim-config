local config = require("nvim-treesitter.configs")

config.setup({
    ensure_installed = {
        "lua",
        "html",
        "javascript",
    },

    highlight = { enable = true},
    indent = { enable = true },
})
