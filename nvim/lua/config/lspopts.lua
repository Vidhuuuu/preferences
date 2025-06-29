vim.lsp.enable({
    "clangd",
    "gopls",
    "ts_ls",
    "lua_ls",
    "ocamllsp",
    "pyright",
    "rust_analyzer"
})

vim.diagnostic.config({
    signs = false,
    jump = { float = true }
})

vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("lsp_keymap", { clear = true }),
    pattern = "*",
    callback = function()
        vim.keymap.set("n", "<leader>F", function()
            vim.lsp.buf.format({ async = true })
            vim.notify("Formatted", vim.log.levels.INFO)
        end)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition)
        vim.keymap.set("n", "L", vim.diagnostic.open_float)
        vim.keymap.set("n", "K", vim.lsp.buf.hover)
    end
})
