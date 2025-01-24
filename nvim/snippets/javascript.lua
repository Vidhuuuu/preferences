local luasnip = require("luasnip")
local fmta = require("luasnip.extras.fmt").fmta
local s = luasnip.snippet
local i = luasnip.insert_node

local snippets = {
    s("er", fmta([[
    if err != nil {
        <error>
    }
        ]], {error = i(1)}
    ))
}

return snippets
