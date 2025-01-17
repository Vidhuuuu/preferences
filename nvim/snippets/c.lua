local luasnip = require("luasnip")
local fmta = require("luasnip.extras.fmt").fmta
local s = luasnip.snippet
local i = luasnip.insert_node

local snippets = {
    s("pp", fmta([[
    printf("<print>\n");
    ]], {print = i(1)})
    ),
}

return snippets
