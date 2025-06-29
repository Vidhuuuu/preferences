local luasnip = require("luasnip")

local s = luasnip.snippet
local i = luasnip.insert_node
local fmt = require("luasnip.extras.fmt").fmt

return {
    s( "pp", fmt("printf(\"{}\\n\");", { i(1) }))
}
