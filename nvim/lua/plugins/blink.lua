return {
   "saghen/blink.cmp",
   version = "1.*",
   dependencies = {'kristijanhusak/vim-dadbod-completion'},
   opts = {
       keymap = {
           preset = "default",
           ["<C-f>"] = { "snippet_forward", "fallback" },
           ["<C-v>"] = { "snippet_backward", "fallback" }
       },
       appearance = { nerd_font_variant = "mono" },
       completion = {
           documentation = { auto_show = false }
       },
       sources = {
           default = { "lsp", "path", "snippets", "buffer" },
           per_filetype = { sql = { 'dadbod' } },
           providers = {
               path = {
                   opts = {
                       get_cwd = function(_)
                           return vim.fn.getcwd()
                       end,
                   },
               },
               dadbod = { module = "vim_dadbod_completion.blink" },
           },
       },
       fuzzy = { implementation = "prefer_rust_with_warning" },
   },
   opts_extend = { "sources.default" }
}
