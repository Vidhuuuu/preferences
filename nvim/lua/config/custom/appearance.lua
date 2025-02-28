vim.cmd.colorscheme("binary")
vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#2a9603" })

vim.diagnostic.config({
    virtual_text = {
        prefix = "",
        spacing = 1,
        format = function()
            return "←"
        end
    },
    signs = true,
    update_in_insert = false
})
