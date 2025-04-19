return {
    "OXY2DEV/markview.nvim",
    lazy = false,

    dependencies = {
        "saghen/blink.cmp"
    },

    opts = {
        preview = {
            enable_hybrid_mode = true,
            hybrid_modes = {"n"}
        },

        markdown = {
            headings = {
                shift_width = 0,

                heading_1 = {
                    sign = "",
                    sign_hl = "",
                    style = "label",
                    align = "center",
                },

                heading_2 = {
                    sign = "",
                    sign_hl = "",
                }
            },

            list_items = {
                wrap = true,
                shift_width = 2,
            },
        },
    },
};
