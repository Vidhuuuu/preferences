vim.loader.enable()
require("config.keymaps")
require("config.options")
require("config.lazy")
require("config.autocmds")
vim.lsp.enable({ "clangd", "gopls", "ts_ls", "lua_ls", "ocamllsp", "pyright" })
