return {
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
        build = "make install_jsregexp",
        config = function()
            local snippets_path = vim.fn.expand("$PREFERENCES/nvim/snippets")
            require('luasnip.loaders.from_lua').load({ paths = snippets_path })
            local luasnip = require("luasnip")
            vim.keymap.set({ "i", "s" }, "<C-e>", function()
                if luasnip.choice_active() then
                    luasnip.change_choice(1)
                end
            end)
            luasnip.setup({ update_events = { "TextChanged", "TextChangedI" } })
        end
    },
    {
        "saghen/blink.cmp",
        version = "1.*",
        dependencies = {
            "kristijanhusak/vim-dadbod-completion",
            { "L3MON4D3/LuaSnip", version = "v2.*" }
        },
        opts = {
            cmdline = { enabled = false },
            keymap = {
                preset = "default",
                ["<C-k>"] = {},
                ["<C-e>"] = {},
                ["<C-f>"] = { "snippet_forward", "fallback" },
                ["<C-v>"] = { "snippet_backward", "fallback" },
            },
            snippets = { preset = "luasnip" },
            completion = { documentation = { auto_show = false } },
            sources = {
                default = { "lsp", "path", "snippets", "buffer" },
                per_filetype = { sql = { 'dadbod' } },
                providers = {
                    dadbod = { module = "vim_dadbod_completion.blink" }
                }
            },
            fuzzy = { implementation = "prefer_rust_with_warning" },
        },
        opts_extend = { "sources.default" }
    }
}
