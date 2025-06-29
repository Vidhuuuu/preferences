vim.keymap.set("v", "<leader>ft", ":!column -t -s'|' -o'|'<CR>", { silent = true })
vim.keymap.set("n", "<leader>j", function()
    local line_num = vim.api.nvim_win_get_cursor(0)[1] - 1;
    local line = vim.api.nvim_buf_get_lines(0, line_num, line_num + 1, false)[1]
    local new_line, count = line:gsub("%[ %]", "[x]", 1)
    if count == 0 then
        new_line = line:gsub("%[x%]", "[ ]", 1)
    end
    vim.api.nvim_buf_set_lines(0, line_num, line_num + 1, false, { new_line })
end)
