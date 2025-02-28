vim.g.mapleader = " "
vim.keymap.set("n", "<CR>", "<Nop>")
vim.keymap.set("n", "<C-h>", '0"_D')
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", ">", ">>")
vim.keymap.set("n", "<", "<<")

vim.keymap.set("n", "<C-M-h>", "<Cmd>vertical resize -3<CR>")
vim.keymap.set("n", "<C-M-j>", "<Cmd>resize +3<CR>")
vim.keymap.set("n", "<C-M-k>", "<Cmd>resize -3<CR>")
vim.keymap.set("n", "<C-M-l>", "<cmd>vertical resize +3<CR>")

vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("v", "<C-h>", "<Cmd>norm!\"_D<CR>", { silent = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true })

vim.keymap.set("c", "<C-j>", "<Down>")
vim.keymap.set("c", "<C-k>", "<Up>")
vim.keymap.set("n", "<C-s>", "<C-6>")

vim.keymap.set("n", "<leader>rr", "\"zyiw:%s/<C-r><C-r>z/")
vim.keymap.set("n", "]b", "<Cmd>bnext<CR>")
vim.keymap.set("n", "[b", "<Cmd>bprev<CR>")

vim.keymap.set("n", "gp", "`[v`]", { noremap = true })
vim.keymap.set("n", "<leader>p", "mz=ip`z", { noremap = true })
