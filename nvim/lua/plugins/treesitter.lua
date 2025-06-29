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
                indent = { enable = false },
                ensure_installed = {
                    "lua", "c", "go",
                    "markdown", "cpp",
                    "ocaml", "javascript",
                    "typescript", "query"
                },
                disable = function(_, buf)
                    local max_filesize = 100 * 1024
                    local buf_name = vim.api.nvim_buf_get_name(buf)
                    local ok, stats = pcall(vim.loop.fs_stat, buf_name)
                    if ok and stats and stats.size > max_filesize then
                        return true
                    end
                end
            })
        end
    },
    {
        "nvim-treesitter/nvim-treesitter-context",
        config = function ()
            require("treesitter-context").setup({ max_lines = 5 })
        end
    }
}
