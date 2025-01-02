return {
    { "tpope/vim-fugitive" },
    {
        "sindrets/diffview.nvim",
        config = function()
            require("diffview").setup({
                use_icons = false,
                view = {
                    merge_tool = {
                         layout = "diff3_vertical"
                    }
                }
            })
        end,
        vim.keymap.set("n", "<leader>do", "<Cmd>DiffviewOpen<CR>"),
        vim.keymap.set("n", "<leader>dc", "<Cmd>DiffviewClose<CR>")
    }
}
