return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "williamboman/mason-lspconfig.nvim"
    },
    config = function()
        local lspconfig = require("lspconfig")
        local mason_lspconfig = require("mason-lspconfig")
        local cmp_nvim_lsp = require("cmp_nvim_lsp")
        vim.api.nvim_create_autocmd("LspAttach", {
            group = vim.api.nvim_create_augroup("UserLspConfig", {}),
            callback = function(args)
                local client = vim.lsp.get_client_by_id(args.data.client_id)
                if client.server_capabilities.semanticTokensProvider then
                    client.server_capabilities.semanticTokensProvider = nil
                end
                vim.keymap.set("n", "gd", vim.lsp.buf.definition)
                vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
                vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
                vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
                vim.keymap.set("n", "L", vim.diagnostic.open_float)
                vim.keymap.set({ "n", "v", }, "<leader>ca", vim.lsp.buf.code_action)
                vim.keymap.set("n", "K", vim.lsp.buf.hover)
            end
        })
        local capabilities = cmp_nvim_lsp.default_capabilities()
        mason_lspconfig.setup_handlers({
            function(server_name)
                lspconfig[server_name].setup({
                    capabilities = capabilities
                })
            end,
            ["lua_ls"] = function()
                lspconfig["lua_ls"].setup({
                    capabilities = capabilities,
                    settings = {
                        Lua = {
                            diagnostics = {
                                globals = { "vim" }
                            }
                        }
                    }
                })
            end,
            ["gopls"] = function()
                lspconfig["gopls"].setup({
                    capabilities = capabilities
                })
            end,
            ["clangd"] = function()
                lspconfig["clangd"].setup({
                    capabilities = capabilities
                })
            end,
            ["ocamllsp"] = function()
                lspconfig["ocamllsp"].setup({
                    capabilities = capabilities
                })
            end,
            ["ts_ls"] = function()
                lspconfig["ts_ls"].setup({
                    capabilities = capabilities
                })
            end,
            ["pyright"] = function()
                lspconfig["pyright"].setup({
                    capabilities = capabilities
                })
            end
        })
    end
}
