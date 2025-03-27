return {
    "stevearc/oil.nvim",
    dependencies = {
        {"nvim-tree/nvim-web-devicons", opts = {}}
    },
    config = function()
        local oil = require("oil")
        function _G.get_dir_winbar()
            return vim.fn.fnamemodify(oil.get_current_dir(), ":~")
        end
        oil.setup({
            default_file_explorer = true,
            columns = {
                "icon",
                "permissions",
                "size",
                "birthtime"
            },
            win_options = {
                winbar = "%!v:lua.get_dir_winbar()"
            },
            watch_for_changes = true,
            keymaps = {
                ["<CR>"] = "actions.select",
                ["-"] = "actions.parent",
                ["_"] = "actions.open_cwd",
                ["`"] = "actions.cd",
                ["<C-c>"] = "actions.close",
                ["<C-l>"] = "actions.refresh",
                ["gl"] = { "actions.select", opts = { vertical = true } },
                ["gn"] = { "actions.select", opts = { horizontal = true } }
            },
            use_default_keymaps = false,
            view_options = {
                show_hidden = true
            }
        })
        vim.keymap.set("n", "-", "<Cmd>Oil<CR>")
    end
}
