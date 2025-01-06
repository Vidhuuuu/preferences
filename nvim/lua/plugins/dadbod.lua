return {
    { "tpope/vim-dadbod" },
    {
        "kristijanhusak/vim-dadbod-ui",
        init = function()
            vim.g.db_ui_execute_on_save = 0
        end
    }
}
