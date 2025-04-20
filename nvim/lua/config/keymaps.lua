vim.g.mapleader = " "

vim.keymap.set("n", "<C-h>", '0"_D')
vim.keymap.set("n", "J", "mzJ`z:delmarks z<CR>")
vim.keymap.set("n", ">", ">>")
vim.keymap.set("n", "<", "<<")

vim.keymap.set("n", "<C-M-h>", "<Cmd>vertical resize -3<CR>")
vim.keymap.set("n", "<C-M-j>", "<Cmd>resize +3<CR>")
vim.keymap.set("n", "<C-M-k>", "<Cmd>resize -3<CR>")
vim.keymap.set("n", "<C-M-l>", "<cmd>vertical resize +3<CR>")

vim.keymap.set("i", "jk", "<ESC>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true })

vim.keymap.set("c", "<C-j>", "<Down>")
vim.keymap.set("c", "<C-k>", "<Up>")
vim.keymap.set("n", "<C-s>", "<C-6>")

vim.keymap.set("n", "gp", "`[v`]", { noremap = true })
vim.keymap.set("n", "<leader>p", "mz=ip`z:delmarks z<CR>", { noremap = true })

vim.keymap.set("n", "<C-q>", function()
    for _, win in ipairs(vim.api.nvim_list_wins()) do
        if vim.api.nvim_buf_get_option(vim.api.nvim_win_get_buf(win), "buftype") == "quickfix" then
            vim.cmd("cclose")
            return
        end
    end
   vim.cmd("copen")
end, { noremap = true })

vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "]d", function()
    vim.diagnostic.jump({ count = 1, float = true })
end)
vim.keymap.set("n", "[d", function()
    vim.diagnostic.jump({ count = -1, float = true })
end)
vim.keymap.set("n", "L", vim.diagnostic.open_float)
vim.keymap.set("n", "K", vim.lsp.buf.hover)
