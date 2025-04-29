return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = {
            'nvim-lua/plenary.nvim'
        },
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        event = 'VeryLazy',
        config = function()
            require("telescope").setup {
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {
                        }
                    }
                },

                pickers = {
                    buffers = {
                        mappings = {
                            n = {
                                ['d'] = 'delete_buffer'
                            },

                            i = {
                                ['<c-d>'] = 'delete_buffer'
                            },
                        },
                    },
                },
            }

            require("telescope").load_extension("ui-select")
        end
    },
}
