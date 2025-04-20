return {
    cmd = { "pyright-langserver", "--stdio" },
    root_markers = { "pyrightconfig.json", ".git" },
    filetypes = { "python" },
    settings = {
        python = {
            analysis = {
                typeCheckingMode = "strict",
                useLibraryCodeForTypes = true,
                autoSearchPaths = true
            }
        }
    }
}
