vim.keymap.set("n", "<leader>doc", function()
    local node = vim.treesitter.get_node()
    if not node then return end
    while node do
        if node:type() == "function_declaration" then
            local params_node = node:field("parameters")[1]
            if params_node then
                local params_names = {}
                for child in params_node:iter_children() do
                    if child:type() == "identifier" then
                        local param_name = vim.treesitter.get_node_text(child, 0)
                        table.insert(params_names, param_name)
                    end
                end
                local jsdoc_tbl = {}
                table.insert(jsdoc_tbl, "/**")
                for i = 1, #params_names do
                    table.insert(jsdoc_tbl, " * @param {} " .. params_names[i] .. " -")
                end
                table.insert(jsdoc_tbl, " * @returns ")
                table.insert(jsdoc_tbl, " */")

                local start_row, _, _, _ = params_node:range()
                vim.api.nvim_buf_set_lines(0, start_row, start_row, false, jsdoc_tbl)
                return
            end
        end
        node = node:parent()
    end
    print("Not inside a function declaration")
end)
