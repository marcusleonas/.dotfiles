return {
    --[[{
        'romgrk/barbar.nvim',
        dependencies = {
            'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
            'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
        },
        init = function() vim.g.barbar_auto_setup = false end,
        opts = {
            -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
            -- animation = true,
            -- insert_at_start = true,
            -- …etc.
            sidebar_filetypes = {
                NvimTree = true,
            }
        },
        lazy = false,
        version = '^1.0.0', -- optional: only update when a new 1.x version is released
        keys = {
            { '<A-,>', '<Cmd>BufferPrevious<CR>', desc = "Previous Tab" },
            { '<A-.>', '<Cmd>BufferNext<CR>', desc = "Next Tab" },
            { '<A-c>', '<Cmd>BufferClose<CR>', desc = "Close Tab" },
        },
    },--]]

    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons',
        keys = {
            { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle Pin" },
            { "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete Non-Pinned Buffers" },
            { "<leader>br", "<Cmd>BufferLineCloseRight<CR>", desc = "Delete Buffers to the Right" },
            { "<leader>bl", "<Cmd>BufferLineCloseLeft<CR>", desc = "Delete Buffers to the Left" },
            { "<S-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
            { "<S-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
            { "[b", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
            { "]b", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
            { "[B", "<cmd>BufferLineMovePrev<cr>", desc = "Move buffer prev" },
            { "]B", "<cmd>BufferLineMoveNext<cr>", desc = "Move buffer next" },
        },
        opts = {
            
        },
        init = function ()
            require("bufferline").setup{
                options = {
                    offsets = {
                        {
                            filetype = "neo-tree",
                            text = "File Tree",
                            highlight = "Directory",
                            text_align = "left",
                        }
                    }
                }
            }
        end
    },
}
