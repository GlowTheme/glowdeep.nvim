-- lua/glowdeep/highlights.lua
local util = require("glowdeep.util")

local M = {}

function M.apply(colors)
	util.hi("Normal", { fg = colors.fg, bg = colors.bg })
	util.hi("NormalNC", { fg = colors.fg_dim, bg = colors.bg })
	-- for things like search
	util.hi("NormalFloat", { fg = colors.fg, bg = colors.mantle })
	util.hi("FloatBorder", { fg = colors.overlay, bg = colors.bg_alt })
	util.hi("WinSeparator", { fg = colors.overlay, bg = colors.bg })

	util.hi("CursorLine", { bg = colors.cursor_line })
	util.hi("LineNr", { fg = colors.subtle, bg = colors.bg })
	util.hi("CursorLineNr", { fg = colors.subtle, bg = colors.bg, bold = true })
	util.hi("SignColumn", { fg = colors.overlay, bg = colors.bg })

	-- Popup menu colors
	util.hi("Pmenu", { fg = colors.fg, bg = colors.surface })
	util.hi("PmenuSel", { fg = colors.bg, bg = colors.blue, bold = true })
	util.hi("PmenuSbar", { bg = colors.overlay })
	util.hi("PmenuThumb", { bg = colors.subtle })

	-- Basic Search
	util.hi("Visual", { bg = colors.overlay })
	util.hi("Search", { fg = colors.bg, bg = colors.search_yellow })
	util.hi("IncSearch", { fg = colors.rg, bg = colors.search_yellow, bold = true })

	-- Basic Status Line Colors
	util.hi("StatusLine", { fg = colors.fg, bg = colors.surface })
	util.hi("StatusLineNC", { fg = colors.muted, bg = colors.surface })
	util.hi("TabLine", { fg = colors.muted, bg = colors.surface })
	util.hi("TabLineSel", { fg = colors.bg, bg = colors.blue, bold = true })
	util.hi("TabLineFill", { bg = colors.surface })

	-- Basic Menu / Nvim interaction stuff
	util.hi("Title", { fg = colors.purple, bold = true })
	util.hi("Comment", { fg = colors.muted })
	util.hi("Todo", { fg = colors.bg, bg = colors.yellow, bold = true })
	util.hi("Error", { fg = colors.error, bold = true })
	util.hi("WarningMsg", { fg = colors.warn })
	util.hi("MoreMsg", { fg = colors.ok })
	util.hi("NonText", { fg = colors.overlay })
	util.hi("Whitespace", { fg = colors.overlay })
	util.hi("SpecialKey", { fg = colors.overlay })

	-- Neo-Treee stuff
	util.hi("Directory", { fg = colors.blue })
	util.hi("NeoTreeNormal", { fg = colors.fg, bg = colors.mantle })
	util.hi("NeoTreeNormalNC", { fg = colors.fg, bg = colors.mantle })

	----------------------------------
	-- SYNTAX HIGHLIGHTING (VIMSCRIPT)
	----------------------------------
	util.hi("Basic", { fg = colors.subtle })
	util.hi("Constant", { fg = colors.orange })
	util.hi("Comment", { fg = colors.muted })
	util.hi("String", { fg = colors.green })
	util.hi("Number", { fg = colors.orange })
	util.hi("Function", { fg = colors.blue, bold = true })
	util.hi("PreProc", { fg = colors.blue, bold = true })
	util.hi("Identifier", { fg = colors.fg })
	util.hi("Keyword", { fg = colors.pink, bold = true })
	util.hi("Statement", { fg = colors.pink, bold = true })
	util.hi("Type", { fg = colors.magenta })
	util.hi("Logical_Operator", { fg = colors.magenta, bold = true })
	util.hi("Class", { fg = colors.cyan })
	util.hi("Class_Fields", { fg = colors.deep_pink, bold = true })
	util.hi("Class_var_member", { fg = colors.pale_red })
	util.hi("Namespace", { fg = colors.pale_red })
	util.hi("Fn_Params", { fg = colors.yellow })
	util.hi("Special", { fg = colors.pink, bold = true })

	-- 3) link a couple treesitter groups to core vim groups so python isn’t blank
	util.hi("@comment", { link = "Comment" })
	util.hi("@string", { link = "String" })
	util.hi("@string.documentation", { link = "String" })
	util.hi("@string.regex", { link = "String" })
	util.hi("@string.escape", { link = "String" })
	util.hi("@string.special", { link = "String" })
	util.hi("@character", { link = "String" })
	util.hi("@character.special", { link = "String" })
	util.hi("@number", { link = "Number" })
	util.hi("@number.float", { link = "Number" })
	util.hi("@boolean", { link = "Keyword" })

	util.hi("@function", { link = "Function" })
	util.hi("@function.call", { link = "Function" })
	util.hi("@function.builtin", { link = "Function" })
	util.hi("@function.macro", { link = "Function" })
	util.hi("@method", { link = "Function" })
	util.hi("@method.call", { link = "Function" })
	util.hi("@modifier", { link = "Function" })
	util.hi("@attribute", { link = "Function" })

	util.hi("@variable", { link = "Identifier" })
	util.hi("@keyword", { link = "Keyword" })
	util.hi("@keyword.operator", { link = "Logical_Operator" })
	util.hi("@keyword.conditional", { link = "Keyword" })
	util.hi("@keyword.function", { link = "Keyword" })
	util.hi("@keyword.repeat", { link = "Keyword" })
	util.hi("@keyword.include", { link = "Keyword" })
	util.hi("@keyword.import", { link = "Keyword" })

	util.hi("@variable.builtin", { link = "Class_Fields" })
	util.hi("@variable.parameter", { link = "Fn_Params" })
	util.hi("@variable.member", { link = "Class_var_member" })
	util.hi("@field", { link = "Class_Fields" })

	util.hi("@type", { link = "Class" })
	util.hi("@type.builtin", { link = "Type" })
	util.hi("@type.definition", { link = "Type" })
	util.hi("@type.qualifier", { link = "Logical_Operator" })
	util.hi("@constructor", { link = "Class" })

	util.hi("@operator", { link = "Class" })
	util.hi("@punctuation", { link = "Basic" })
	util.hi("@punctuation.delimiter", { link = "Basic" })
	util.hi("@property", { link = "Class_var_member" })

	-- Deal with Dunder stuff
	-- util.hi("@function.python", { link = "Function" })

	util.hi("@constant", { link = "Constant" })
	util.hi("@namespace", { link = "Namespace" })
	util.hi("@lsp.type.namespace.rust", { link = "Class_var_member" })
	util.hi("@lsp.typemod.namespace.attribute.rust", { link = "Function" })

	util.hi("@module.rust", { link = "Namespace" })
	util.hi("@module.python", { link = "Identifier" })

	util.hi("RainbowDelimiterRed", { fg = colors.yellow }) -- soft red
	util.hi("RainbowDelimiterYellow", { fg = colors.pink }) -- amber
	util.hi("RainbowDelimiterGreen", { fg = colors.cyan }) -- green
	util.hi("RainbowDelimiterBlue", { fg = colors.purple }) -- blue
	util.hi("RainbowDelimiterCyan", { fg = colors.orange }) -- cyan
	util.hi("RainbowDelimiterViolet", { fg = colors.magenta }) -- violet

	-- Diff / Git
	util.hi("DiffAdd", { bg = util.darken(colors.ok, 0.85, colors.bg) })
	util.hi("DiffChange", { bg = util.darken(colors.blue, 0.88, colors.bg) })
	util.hi("DiffDelete", { bg = util.darken(colors.red, 0.85, colors.bg) })
	util.hi("DiffText", { bg = util.darken(colors.blue, 0.75, colors.bg), bold = true })

	util.hi("GitSignsAdd", { fg = colors.ok })
	util.hi("GitSignsChange", { fg = colors.blue })
	util.hi("GitSignsDelete", { fg = colors.red })

	-- Popup diagnostics
	util.hi("DiagnosticError", { fg = colors.error })
	util.hi("DiagnosticWarn", { fg = colors.warn })
	util.hi("DiagnosticInfo", { fg = colors.info })
	util.hi("DiagnosticHint", { fg = colors.hint })
	util.hi("DiagnosticOk", { fg = colors.ok })

	util.hi("DiagnosticUnderlineError", { sp = colors.error, undercurl = true })
	util.hi("DiagnosticUnderlineWarn", { sp = colors.warn, undercurl = true })
	util.hi("DiagnosticUnderlineInfo", { sp = colors.info, undercurl = true })
	util.hi("DiagnosticUnderlineHint", { sp = colors.hint, undercurl = true })

	-- which-key specific
	util.hi("WhichKey", { fg = colors.blue, bg = colors.surface, bold = true })
	util.hi("WhichKeyNormal", { fg = colors.blue, bg = colors.surface, bold = true })
	util.hi("WhichKeyGroup", { fg = colors.purple, bg = colors.surface })
	util.hi("WhichKeyDesc", { fg = colors.fg, bg = colors.surface })
	util.hi("WhichKeyBorder", { fg = colors.overlay, bg = colors.surface })
	util.hi("WhichKeySeparator", { fg = colors.subtle, bg = colors.surface })

	util.hi("TelescopeNormal", { fg = colors.fg, bg = colors.bg })
	util.hi("TelescopeBorder", { fg = colors.overlay, bg = colors.bg_alt })
	util.hi("TelescopePromptNormal", { fg = colors.fg, bg = colors.bg_alt })
	util.hi("TelescopePromptBorder", { fg = colors.overlay, bg = colors.bg_alt })
end

return M
