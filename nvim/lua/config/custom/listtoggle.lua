local function toggle_list(list_type)
    local is_open = false
    local open_list = (list_type == "quickfix" and "copen" or "lopen")
    local close_list = (list_type == "quickfix" and "cclose" or "lclose")
    for _, win in pairs(vim.fn.getwininfo()) do
        if(list_type == "quickfix" and win.quickfix == 1) or
            (list_type == "loclist" and win.loclist == 1) then
            is_open = true
            break
        end
    end
    if is_open then
        vim.cmd(close_list)
    else
        if list_type == "loclist" then
            local success = pcall(vim.cmd, open_list)
            if not success then
                vim.notify("Location List is empty", vim.log.levels.INFO)
                return
            end
        else
            vim.cmd(open_list)
        end
        local list_count = (list_type == "quickfix") and
        #vim.fn.getqflist() or #vim.fn.getloclist(0)
        local win_height = math.min(10, list_count)
        vim.cmd(win_height .. "wincmd _")
        if list_type == "loclist" then
            vim.cmd("wincmd K")
        end
    end
end

vim.keymap.set("n", "<C-q>", function() toggle_list("quickfix") end, { noremap = true })
vim.keymap.set("n", "<C-l>", function() toggle_list("loclist") end, { noremap = true })

vim.keymap.set("n", "<C-j>", "<Cmd>cnext<CR>zz", { noremap = true })
vim.keymap.set("n", "<C-k>", "<Cmd>cprev<CR>zz", { noremap = true })

vim.keymap.set("n", "<C-n>", "<Cmd>lnext<CR>zz", { noremap = true })
vim.keymap.set("n", "<C-p>", "<Cmd>lprev<CR>zz", { noremap = true })
