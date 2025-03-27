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
            vim.cmd.colorscheme("modus_vivendi")
            vim.api.nvim_set_hl(0 ,"Comment", { fg = "#00ffff" })
        end
    }
}
