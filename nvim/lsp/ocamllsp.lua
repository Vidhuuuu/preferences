return {
    cmd = { "ocamllsp", "--fallback-read-dot-merlin" },
    root_markers = { "dune-project", ".ocamlformat" },
    filetypes = { "ocaml", "reason" },
    settings = {
        formatting = true
    }
}
