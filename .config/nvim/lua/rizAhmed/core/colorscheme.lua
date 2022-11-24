local status,_ = pcall(vim.cmd, "colorscheme darkplus")
if not status then
    print("colorscheme not found")
    return
end
