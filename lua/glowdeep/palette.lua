local M = {}
-- Base palettes (tweak to taste)
M.dark = {
	bg = "#0f1115",
	bg_alt = "#131720",
	fg = "#cdd6f4",
	fg_dim = "#a6adc8",
	surface = "#1a1e29",
	mantle = "#0b0d12",
	overlay = "#2a2f3a",
	muted = "#6c7086",
	subtle = "#585b70",

	red = "#f38ba8",
	orange = "#fab387",
	yellow = "#f9e2af",
	green = "#a6e3a1",
	teal = "#94e2d5",
	cyan = "#89dceb",
	blue = "#89b4fa",
	purple = "#cba6f7",
	magenta = "#f5c2e7",

	-- semantic
	error = "#f38ba8",
	warn = "#fab387",
	info = "#89b4fa",
	hint = "#94e2d5",
	ok = "#a6e3a1",
}

M.light = {
	bg = "#fbfbfe",
	bg_alt = "#f2f4fb",
	fg = "#1e2030",
	fg_dim = "#4b5164",
	surface = "#e9ecf6",
	mantle = "#f7f8fd",
	overlay = "#dfe4f3",
	muted = "#6b708b",
	subtle = "#7b809a",

	red = "#cc395e",
	orange = "#c7702b",
	yellow = "#b48300",
	green = "#2c8f4a",
	teal = "#2d8c86",
	cyan = "#1f7aa3",
	blue = "#2a66c2",
	purple = "#7a3acb",
	magenta = "#a33ca8",

	error = "#cc395e",
	warn = "#c7702b",
	info = "#2a66c2",
	hint = "#2d8c86",
	ok = "#2c8f4a",
}

return M
