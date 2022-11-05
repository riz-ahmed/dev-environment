local lualine_setup, lualine = pcall(require, "lualine")
if not lualine_setup then
    return 
end

-- selecting nightfly theme for lualine
local custom_nightfly = require "lualine.themes.nightfly"

-- customizing colors for the lualine nightfly theme
local lualine_colors = {
    GreenYellow = "#ADFF2F",
    MediumSeaGreen = "#3CB371",
    Blue = "#0000FF",
    Lavender = "#E6E6FA"

}

-- setting the new custom theme colors
custom_nightfly.normal.c.bg = lualine_colors.Blue
custom_nightfly.normal.a.bg = lualine_colors.Lavender 
custom_nightfly.visual.a.bg = lualine_colors.MediumSeaGreen
custom_nightfly.insert.a.bg = lualine_colors.GreenYellow


lualine.setup({
    options = { theme = custom_nightfly }
})
