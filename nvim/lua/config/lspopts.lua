vim.lsp.enable({ "clangd", "gopls", "ts_ls", "lua_ls", "ocamllsp", "pyright" })

vim.diagnostic.config({ signs = false })

local lsp_keymap_group = vim.api.nvim_create_augroup("lsp_keymap", { clear = true })
vim.api.nvim_create_autocmd("LspAttach", {
    group = lsp_keymap_group,
    pattern = "*",
    callback = function()
        vim.keymap.set("n", "<leader>S", function()
            vim.lsp.buf.format({ async = true })
            vim.notify("Formatted", vim.log.levels.INFO)
        end)

        vim.keymap.set("n", "gd", vim.lsp.buf.definition)
        vim.keymap.set("n", "]d", function()
            vim.diagnostic.jump({ count = 1, float = true })
        end)
        vim.keymap.set("n", "[d", function()
            vim.diagnostic.jump({ count = -1, float = true })
        end)
        vim.keymap.set("n", "L", vim.diagnostic.open_float)
        vim.keymap.set("n", "K", vim.lsp.buf.hover)
    end
})
