return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                highlight = { enable = false },
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "<C-c>",
                        node_incremental = "<C-c>",
                        node_decremental = "<C-space>"
                    }
                },
                indent = { enable = true },
                ensure_installed = {
                    "lua", "c", "go",
                    "markdown", "cpp",
                    "ocaml", "javascript",
                    "typescript", "query"
                }
            })
        end
    },
    {
        "nvim-treesitter/nvim-treesitter-context",
        config = function ()
            require("treesitter-context").setup({
                max_lines = 5
            })
        end
    }
}
