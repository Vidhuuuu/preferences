return {
    cmd = { "pyright-langserver", "--stdio" },
    root_markers = { "pyproject.toml", ".git" },
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
