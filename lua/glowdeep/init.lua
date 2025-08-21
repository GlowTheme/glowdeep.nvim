local palettes = require("glowdeep.palette")
local highlights = require("glowdeep.highlights")

local M = {}

M._opts = {
	style = "dark", -- "dark" | "light"
	transparent = false,
	dim_inactive = false,
	italics = {
		comments = true,
		keywords = true,
		strings = false,
		functions = false,
	},
	overrides = nil, -- function(colors, opts) -> {Group = {fg=...,bg=...}}
}

---@param opts table|nil
function M.setup(opts)
	M._opts = vim.tbl_deep_extend("force", M._opts, opts or {})
end

function M.load()
	if vim.fn.has("termguicolors") == 1 then
		vim.o.termguicolors = true
	end

	local style = (M._opts.style == "light") and "light" or "dark"
	local colors = (style == "light") and palettes.light or palettes.dark

	vim.g.colors_name = "glowdeep"

	-- set terminal colors (optional but nice)
	vim.g.terminal_color_0 = colors.bg
	vim.g.terminal_color_1 = colors.red
	vim.g.terminal_color_2 = colors.green
	vim.g.terminal_color_3 = colors.yellow
	vim.g.terminal_color_4 = colors.blue
	vim.g.terminal_color_5 = colors.purple
	vim.g.terminal_color_6 = colors.cyan
	vim.g.terminal_color_7 = colors.fg
	vim.g.terminal_color_8 = colors.overlay
	vim.g.terminal_color_9 = colors.red
	vim.g.terminal_color_10 = colors.green
	vim.g.terminal_color_11 = colors.yellow
	vim.g.terminal_color_12 = colors.blue
	vim.g.terminal_color_13 = colors.purple
	vim.g.terminal_color_14 = colors.cyan
	vim.g.terminal_color_15 = colors.fg

	highlights.apply(colors, M._opts)
end

return M
