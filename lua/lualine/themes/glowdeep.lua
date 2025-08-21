local palettes = require("glowdeep.palette")

local function theme_from(colors)
	return {
		normal = {
			a = { fg = colors.bg, bg = colors.blue, gui = "bold" },
			b = { fg = colors.fg, bg = colors.surface },
			c = { fg = colors.fg_dim, bg = colors.mantle },
		},
		insert = {
			a = { fg = colors.bg, bg = colors.ok, gui = "bold" },
		},
		visual = {
			a = { fg = colors.bg, bg = colors.purple, gui = "bold" },
		},
		replace = {
			a = { fg = colors.bg, bg = colors.red, gui = "bold" },
		},
		command = {
			a = { fg = colors.bg, bg = colors.yellow, gui = "bold" },
		},
		inactive = {
			a = { fg = colors.muted, bg = colors.mantle },
			b = { fg = colors.muted, bg = colors.mantle },
			c = { fg = colors.muted, bg = colors.mantle },
		},
	}
end

local style = (vim.g.glowdeep_style == "light") and "light" or "dark"
local colors = (style == "light") and palettes.light or palettes.dark

return theme_from(colors)
