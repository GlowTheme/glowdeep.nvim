local util = require("glowdeep.util")

local M = {}

---@class GlowdeepOptions
---@field style '"dark"'|'"light"'
---@field transparent boolean
---@field dim_inactive boolean
---@field italics table    -- { comments=true, keywords=true, strings=false, functions=false }
---@field overrides fun(colors:table, opts:table): table|nil

local function ts(group)
	return "@" .. group
end

function M.apply(colors, opts)
	local bg = opts.transparent and "NONE" or colors.bg
	local bg_alt = opts.transparent and "NONE" or colors.bg_alt

	-- Core UI
	util.hi("Normal", { fg = colors.fg, bg = bg })
	util.hi("NormalNC", { fg = colors.fg_dim, bg = opts.dim_inactive and colors.mantle or bg })
	util.hi("NormalFloat", { fg = colors.fg, bg = bg_alt })
	util.hi("FloatBorder", { fg = colors.overlay, bg = bg_alt })
	util.hi("WinSeparator", { fg = colors.overlay, bg = bg })

	util.hi("CursorLine", { bg = util.darken(colors.surface, 0.5, colors.bg) })
	util.hi("CursorColumn", { bg = util.darken(colors.surface, 0.5, colors.bg) })
	util.hi("ColorColumn", { bg = util.darken(colors.surface, 0.5, colors.bg) })
	util.hi("LineNr", { fg = colors.subtle, bg = bg })
	util.hi("CursorLineNr", { fg = colors.blue, bg = bg, bold = true })
	util.hi("SignColumn", { fg = colors.overlay, bg = bg })

	util.hi("Pmenu", { fg = colors.fg, bg = colors.surface })
	util.hi("PmenuSel", { fg = colors.bg, bg = colors.blue, bold = true })
	util.hi("PmenuSbar", { bg = colors.overlay })
	util.hi("PmenuThumb", { bg = colors.subtle })

	util.hi("Visual", { bg = util.darken(colors.blue, 0.7, colors.bg) })
	util.hi("Search", { fg = colors.bg, bg = colors.yellow })
	util.hi("IncSearch", { fg = colors.bg, bg = colors.orange, bold = true })
	util.hi("MatchParen", { fg = colors.cyan, bold = true })

	util.hi("StatusLine", { fg = colors.fg, bg = colors.surface })
	util.hi("StatusLineNC", { fg = colors.muted, bg = colors.surface })
	util.hi("TabLine", { fg = colors.muted, bg = colors.surface })
	util.hi("TabLineSel", { fg = colors.bg, bg = colors.blue, bold = true })
	util.hi("TabLineFill", { bg = colors.surface })

	util.hi("Directory", { fg = colors.blue })
	util.hi("Title", { fg = colors.purple, bold = true })
	util.hi("Comment", { fg = colors.muted, italic = opts.italics.comments })
	util.hi("Todo", { fg = colors.bg, bg = colors.yellow, bold = true })
	util.hi("Error", { fg = colors.error, bold = true })
	util.hi("WarningMsg", { fg = colors.warn })
	util.hi("MoreMsg", { fg = colors.ok })
	util.hi("NonText", { fg = colors.overlay })
	util.hi("Whitespace", { fg = colors.overlay })
	util.hi("SpecialKey", { fg = colors.overlay })

	-- Syntax (vimscript)
	util.hi("String", { fg = colors.green, italic = opts.italics.strings })
	util.hi("Character", { fg = colors.green })
	util.hi("Number", { fg = colors.purple })
	util.hi("Boolean", { fg = colors.purple })
	util.hi("Float", { fg = colors.purple })
	util.hi("Identifier", { fg = colors.fg })
	util.hi("Function", { fg = colors.blue, italic = opts.italics.functions })
	util.hi("Statement", { fg = colors.purple })
	util.hi("Conditional", { fg = colors.purple })
	util.hi("Repeat", { fg = colors.purple })
	util.hi("Label", { fg = colors.orange })
	util.hi("Operator", { fg = colors.cyan })
	util.hi("Keyword", { fg = colors.purple, italic = opts.italics.keywords })
	util.hi("Exception", { fg = colors.red })
	util.hi("PreProc", { fg = colors.orange })
	util.hi("Include", { fg = colors.orange })
	util.hi("Define", { fg = colors.orange })
	util.hi("Macro", { fg = colors.orange })
	util.hi("Type", { fg = colors.yellow })
	util.hi("StorageClass", { fg = colors.yellow })
	util.hi("Structure", { fg = colors.yellow })
	util.hi("Typedef", { fg = colors.yellow })
	util.hi("Special", { fg = colors.teal })
	util.hi("Underlined", { underline = true })

	-- Diagnostics / LSP
	util.hi("DiagnosticError", { fg = colors.error })
	util.hi("DiagnosticWarn", { fg = colors.warn })
	util.hi("DiagnosticInfo", { fg = colors.info })
	util.hi("DiagnosticHint", { fg = colors.hint })
	util.hi("DiagnosticOk", { fg = colors.ok })

	util.hi("DiagnosticUnderlineError", { sp = colors.error, undercurl = true })
	util.hi("DiagnosticUnderlineWarn", { sp = colors.warn, undercurl = true })
	util.hi("DiagnosticUnderlineInfo", { sp = colors.info, undercurl = true })
	util.hi("DiagnosticUnderlineHint", { sp = colors.hint, undercurl = true })

	-- Treesitter (essentials)
	util.hi(ts("comment"), { link = "Comment" })
	util.hi(ts("keyword"), { link = "Keyword" })
	util.hi(ts("keyword.function"), { fg = colors.purple, italic = opts.italics.keywords })
	util.hi(ts("function"), { link = "Function" })
	util.hi(ts("function.call"), { link = "Function" })
	util.hi(ts("string"), { link = "String" })
	util.hi(ts("type"), { link = "Type" })
	util.hi(ts("number"), { link = "Number" })
	util.hi(ts("boolean"), { link = "Boolean" })
	util.hi(ts("constant"), { link = "Constant" })
	util.hi(ts("variable"), { fg = colors.fg })
	util.hi(ts("field"), { fg = colors.fg })
	util.hi(ts("property"), { fg = colors.fg })
	util.hi(ts("operator"), { link = "Operator" })
	util.hi(ts("punctuation"), { fg = colors.subtle })

	-- Diff / Git
	util.hi("DiffAdd", { bg = util.darken(colors.ok, 0.85, colors.bg) })
	util.hi("DiffChange", { bg = util.darken(colors.blue, 0.88, colors.bg) })
	util.hi("DiffDelete", { bg = util.darken(colors.red, 0.85, colors.bg) })
	util.hi("DiffText", { bg = util.darken(colors.blue, 0.75, colors.bg), bold = true })

	util.hi("GitSignsAdd", { fg = colors.ok })
	util.hi("GitSignsChange", { fg = colors.blue })
	util.hi("GitSignsDelete", { fg = colors.red })

	-- Popup diagnostics
	util.hi("NormalFloat", { fg = colors.fg, bg = bg_alt })
	util.hi("FloatTitle", { fg = colors.blue, bg = bg_alt, bold = true })

	-- User overrides
	if type(opts.overrides) == "function" then
		local extra = opts.overrides(colors, opts) or {}
		for group, spec in pairs(extra) do
			util.hi(group, spec)
		end
	end
end

return M
