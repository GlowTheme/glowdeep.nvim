-- This file allows :colorscheme glowdeep
local ok, theme = pcall(require, "glowdeep")
if not ok then
	return
end

-- If user called :colorscheme directly without setup
if not theme._opts then
	theme.setup()
end
theme.load()
