return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
    event = {
        "BufReadPre",
        "BufNewFile"
    },
    config = function()
        require("ibl").setup({
            indent = {
                char = "┊",
            },
        })
    end
}
