return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-buffer",
        {
            "L3MON4D3/LuaSnip",
            version = "v2.*"
        },
        "saadparwaiz1/cmp_luasnip"
    },
    config = function()
        local cmp = require("cmp")
        local luasnip = require("luasnip")
        cmp.setup({
            completion = {
                completeopt = "menu,menuone,noselect,noinsert"
            },
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-y>"] = cmp.mapping.confirm({ select = false }),
                ['<C-j>'] = cmp.mapping.scroll_docs(2),
                ['<C-k>'] = cmp.mapping.scroll_docs(-2)
            }),
            sources = cmp.config.sources({
                { name = "nvim_lsp", keyword_length = 3 },
                { name = "luasnip" },
                { name = "buffer", },
                { name = "path" }
            })
        })
    end
}
