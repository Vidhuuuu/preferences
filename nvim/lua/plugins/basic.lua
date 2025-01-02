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
        "nacro90/numb.nvim",
        config = function()
            require("numb").setup({
                show_numbers = false,
                hide_relativenumbers = false,
                centered_peeking = false
            })
        end
    },
    {
        "ishan9299/modus-theme-vim",
        priority = 1000,
        lazy = false,
        config = function()
            vim.cmd.colorscheme("modus-vivendi")
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#333333" })
        end
    }
}
