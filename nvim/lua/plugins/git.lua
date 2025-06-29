return {
    { "tpope/vim-fugitive" },
    {
        "sindrets/diffview.nvim",
        config = function()
            local diffview = require("diffview")
            diffview.setup({
                view = { merge_tool = { layout = "diff3_vertical" } },
            })
            vim.keymap.set("n", "<leader>do", diffview.open)
            vim.keymap.set("n", "<leader>dc", diffview.close)
        end
    }
}
