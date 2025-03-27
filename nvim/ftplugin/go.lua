vim.keymap.set("v", "<leader>al", ":!column -t -s' ' -o' '<CR>", { buffer = true })
vim.bo.formatoptions = vim.bo.formatoptions .. 'ro'
