return {
    {
        "mbbill/undotree",
        vim.keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<cr>"),
        config = function()
            vim.g.undotree_ShortIndicators = 1
            vim.g.undotree_SetFocusWhenToggle = 1
        end
    },
    { "zhimsel/vim-stay" }
}
