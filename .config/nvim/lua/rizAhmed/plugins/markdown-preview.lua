local setup, markdown_preview = pcall(require, "markdown-preview.nvim")
if not setup then
    return
end

markdown_preview.setup(
    function()
    vim.g.nkdp_theme = 'dark'
    end
)
