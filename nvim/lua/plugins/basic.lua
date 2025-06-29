return {
    {
        "mbbill/undotree",
        vim.keymap.set("n", "<leader>u", "<Cmd>UndotreeToggle<CR>"),
        config = function()
            vim.g.undotree_ShortIndicators = 1
            vim.g.undotree_SetFocusWhenToggle = 1
        end
    },
    {
        "LuRsT/austere.vim",
        config = function()
            vim.cmd.colorscheme("austere")
            vim.api.nvim_set_hl(0, "Search", { fg = "#000000", bg = "#00ff00" })
            vim.api.nvim_set_hl(0, "IncSearch", { fg = "#000000", bg = "#00ff00" })
            vim.api.nvim_set_hl(0, "Visual", { fg = "#000000", bg = "#f8f4e3" })
            vim.api.nvim_set_hl(0, "TelescopeMatching", { fg = "#f8f4e3", bg = "#101010" })
            vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#232323" })
        end
    },
    { "zhimsel/vim-stay" },
    {
        "j-hui/fidget.nvim",
        opts = {
            progress = { display = { progress_icon = { "moon" } } }
        }
    },
    {
        "mason-org/mason.nvim",
        opts = {}
    }
}
