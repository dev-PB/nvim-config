local heading_opts = {
    sign = "",
    style = "label",
}

return {
    "OXY2DEV/markview.nvim",
    lazy = false,

    dependencies = {
        "saghen/blink.cmp"
    },

    opts = {
        preview = {
            icon_provider = "devicons",
        },

        markdown = {
            headings = {
                shift_width = 0,

                heading_1 = heading_opts,
                heading_2 = heading_opts,
                heading_3 = heading_opts,
                heading_4 = heading_opts,
                heading_5 = heading_opts,
            },

            list_items = {
                wrap = true,
                shift_width = 2,
            },

            code_blocks = {
                sign = false,
            }
        },
    },
};
