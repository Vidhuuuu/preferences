vim.api.nvim_create_augroup("LspAutocompletion", { clear = true })

vim.api.nvim_create_autocmd('LspAttach', {
    group = "LspAutocompletion",
    once = true,
    callback = function(ev)
        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        if client.supports_method('textDocument/completion') then
            vim.lsp.completion.enable(true, client.id, ev.buf, {})
        end
    end,
})
