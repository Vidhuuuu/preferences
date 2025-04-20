vim.loader.enable()
require("config.keymaps")
require("config.options")
require("config.lazy")
require("config.compile")

vim.lsp.enable({ "clangd", "gopls", "ts_ls", "lua_ls", "ocamllsp", "pyright" })
vim.diagnostic.config({ signs = false })

vim.cmd.colorscheme("vim")
vim.api.nvim_set_hl(0, "StatusLine", { bg = "#000000", fg = "#ffffff" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1e1e2e", fg = "#cdd6f4" })
vim.api.nvim_set_hl(0, "Pmenu", { bg = "#1e1e2e", fg = "#cdd6f4" })
vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#89b4fa", fg = "#1e1e2e" })
