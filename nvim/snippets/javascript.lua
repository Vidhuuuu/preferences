local luasnip = require("luasnip")
local s = luasnip.snippet
local i = luasnip.insert_node
local d = luasnip.dynamic_node
local t = luasnip.text_node
local sn = luasnip.snippet_node
local fmt = require("luasnip.extras.fmt").fmt

local function make_jsdoc(args, _)
    local params = args[1][1]
    local lines = {}
    for param in params:gmatch("[^,%s]+") do
        table.insert(lines, "@param {} " .. param)
    end
    return sn(nil, {
        t("/**"),
        t({ "", "" }),
        t(vim.tbl_map(function(line)
            return " * " .. line .. " -"
        end, lines)),
        t({ "", " * @returns" }),
        t({ "", " */" })
    })
end

return {
    s("fdoc", fmt([[
    {}
    function {}({}) {{
        {}
    }}
    ]], {
        d(1, make_jsdoc, { 3 }),
        i(2), i(3), i(0)
    }))
}
