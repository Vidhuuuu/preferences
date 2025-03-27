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
        "jackplus-xyz/binary.nvim",
        "miikanissi/modus-themes.nvim",
        opts = {}
    },
    {
        "chentoast/marks.nvim",
        event = "VeryLazy",
        opts = {}
    }
}
