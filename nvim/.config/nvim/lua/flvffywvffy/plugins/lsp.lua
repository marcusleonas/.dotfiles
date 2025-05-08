return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.lsp.config('rust_analyzer', {
                -- Server-specific settings. See `:help lsp-quickstart`
                settings = {
                    ['rust-analyzer'] = {},
                },
            })
            vim.lsp.config('gopls', {
                settings = {
                    ['gopls'] = {},
                }
            })
        end,
    },
    {
        "mason-org/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function () 
            local configs = require("nvim-treesitter.configs")

            configs.setup({
                ensure_installed = { "lua", "vim", "vimdoc", "javascript", "html", "typescript", "go", "rust" },
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true },  
            })
        end
    },
    {
        'neoclide/coc.nvim',
        branch = 'release',
        lazy = false,
        config = function()
            vim.keymap.set("i", "<TAB>", "coc#pum#visible() ? coc#pum#next(1) : '<TAB>'", { expr = true, silent = true })
            vim.keymap.set("i", "<S-TAB>", "coc#pum#visible() ? coc#pum#prev(1) : '<S-TAB>'", { expr = true, silent = true })
            vim.keymap.set("i", "<CR>", "coc#pum#visible() ? coc#pum#confirm() : '<CR>'", { expr = true, silent = true })

        end,
    }
}
