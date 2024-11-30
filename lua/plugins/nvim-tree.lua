return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,

    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    config = function()
        require("nvim-tree").setup({
            diagnostics = {
                enable = true,
                icons = {
                    error = "",
                    warning = "",
                    info = "",
                    hint = "",
                },
            },

            modified = { enable = true, },

            renderer = {
                icons = {
                    git_placement = "before",
                    glyphs = {
                        git = {
                            unstaged = "",
                            staged = "",
                            unmerged = "",
                            renamed = "",
                            untracked = "",
                            deleted = "",
                            ignored = "",
                        },
                    },
                },
            },
        })
    end,
}
