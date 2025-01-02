return {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    dependencies = { "saadparwaiz1/cmp_luasnip" },
    config = function()
        local luasnip = require("luasnip")
        require('luasnip.loaders.from_lua').load({ paths = vim.fn.expand("$PREFERENCES/nvim/snippets") })
        vim.keymap.set({ "i", "s" }, "<C-f>", function()
            luasnip.jump(1)
        end, { silent = true })
        vim.keymap.set({ "i", "s" }, "<C-v>", function()
            luasnip.jump(-1)
        end, { silent = true })
        vim.keymap.set({ "i", "s" }, "<C-s>", function()
            if luasnip.choice_active() then
                luasnip.change_choice(1)
            end
        end, { silent = true })
    end
}
