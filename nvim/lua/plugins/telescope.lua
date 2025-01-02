return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make"
        }
    },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")
        telescope.setup({
            defaults = {
                layout_strategy = "bottom_pane",
                layout_config = {
                    height = 0.4,
                    prompt_position = "bottom"
                },
                preview = false,
                border = false,
                results_title = "",
                mappings = {
                    i = {
                        ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
                        ["<C-c>"] = actions.close
                    },
                    n = {
                        ["<C-c>"] = actions.close
                    }
                }
            }
        })
        telescope.load_extension("fzf")
        vim.keymap.set("n", "<leader>ff", "<Cmd>Telescope find_files<CR>")
        vim.keymap.set("n", "<leader>fg", "<Cmd>Telescope live_grep<CR>")
        vim.keymap.set("n", "<leader>fb", "<Cmd>Telescope buffers<CR>")
    end
}
