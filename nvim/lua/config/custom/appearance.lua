vim.cmd.colorscheme("binary")
vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#2a9603" })
vim.api.nvim_set_hl(0, "Comment", { fg = "#37db1a", bold = true })
vim.api.nvim_set_hl(0, "MarkSignHL", { fg = "#37db1a", bold = true })
vim.api.nvim_set_hl(0, "TreesitterContextBottom", { fg = "#26f71b" })

vim.diagnostic.config({
    signs = false,
})
