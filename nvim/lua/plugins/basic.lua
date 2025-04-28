return {
    {
        "mbbill/undotree",
        vim.keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<cr>"),
        config = function()
            vim.g.undotree_ShortIndicators = 1
            vim.g.undotree_SetFocusWhenToggle = 1
        end
    },
    {
        "miikanissi/modus-themes.nvim",
        priority = 1000,
        config = function()
            require("modus-themes").setup({
                on_highlights = function(highlight)
                    highlight.StatusLine = { bg = "#000000", fg = "#ffffff" }
                    highlight.SnippetTabStop = { bg = nil, fg = nil }
                    highlight.Comment = { fg = "#dbdddd", italic = true }
                end
            })
            vim.cmd.colorscheme("modus_vivendi")
        end
    },
    { "zhimsel/vim-stay" },
    {
        "j-hui/fidget.nvim",
        opts = {
            progress = { display = { progress_icon = { "moon" } } }
        }
    }
}
