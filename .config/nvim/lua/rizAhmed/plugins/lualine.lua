local lualine_setup, lualine = pcall(require, "lualine")
if not lualine_setup then
    return 
end

-- selecting theme theme for lualine
-- local custom_theme = require "lualine.themes.default_colorscheme"

-- customizing colors for the lualine theme theme
-- local lualine_colors = {
--     GreenYellow = "#ADFF2F",
--     MediumSeaGreen = "#3CB371",
--     Blue = "#0000FF",
--     Lavender = "#E6E6FA"
--
-- }

-- setting the new custom theme colors
-- custom_theme.normal.c.bg = lualine_colors.Blue
-- custom_theme.normal.a.bg = lualine_colors.Lavender 
-- custom_theme.visual.a.bg = lualine_colors.MediumSeaGreen
-- custom_theme.insert.a.bg = lualine_colors.GreenYellow
--
--
-- lualine.setup({
--     options = { theme = custom_theme }
-- })
--
lualine.setup()
