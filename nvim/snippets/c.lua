local luasnip = require("luasnip")
local s = luasnip.snippet
local t = luasnip.text_node
local i = luasnip.insert_node

local snippets = {
    s("pp", {
        t("printf(\""),
        i(1),
        t("\\n\");"),
    }),
}

return snippets
