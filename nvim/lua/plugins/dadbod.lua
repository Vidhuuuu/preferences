return {
    { "tpope/vim-dadbod" },
    {
        "kristijanhusak/vim-dadbod-ui",
        init = function()
            vim.g.db_ui_execute_on_save = 0
            vim.g.db_ui_force_echo_notifications = 1
        end
    }
}
