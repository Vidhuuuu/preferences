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
        "jackplus-xyz/binary.nvim",
        opts = {}
    },
    {
        "yuratomo/w3m.vim",
        vim.keymap.set("n", "<leader>sw", function()
            local query = vim.fn.input("W3m> ")
            vim.cmd("W3mSplit " .. query)
            vim.cmd("W3mSyntaxOff")
        end)
    }
}
