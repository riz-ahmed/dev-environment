local setup, treesitter = pcall(require, "nvim-treesitter.configs")
if not setup then
    print "tressitter config not working"
    return
end

-- configure treesitter
treesitter.setup({
    -- enable syntax hihglighting
    highlight = {
        enable = true,
    },
    -- enable indentation
    indent = {
        enable = true
    },
    -- ensure langugae parsers installed
    ensure_installed = {
        "c",
        "cpp",
        "python",
    },
    -- auto install missing parsers
    auto_install = true,
})
