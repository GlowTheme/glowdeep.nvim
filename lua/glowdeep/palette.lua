-- lua/glowdeep/palette.lua
local M = {}

M.dark = {
	bg = "#1a212e",
	bg_alt = "#1d2533",
	fg_bright = "#e0eeef",
	fg = "#b6c3d9",
	surface = "#212a3b",
	mantle = "#171d29",
	overlay = "#454963",
	muted = "#676e95",
	subtle = "#838FA7",

	red = "#e51400",
	orange = "#f39b6d",
	yellow = "#ffc15e",
	green = "#85d680",
	teal = "#8A97C3",
	cyan = "#1ac8ed",
	blue = "#72a1e5",
	purple = "#9883e5",
	magenta = "#ff6ab3",

	error = "#e51400",
	warn = "#ff8a4c",
	info = "#4480f4",
	hint = "#1ac8ed",
	ok = "#3ec141",

	bad_green = "#00ff00",

	file_orange = "#ff8a4c",
	deep_yellow = "#ee9d28",
	pale_red = "#ff686b",
	deep_pink = "#f02b77",
	pink = "#d972ff",

	-- Optional extras if you want them later
	cursor = "#f39b6d",
	cursor_line = "#252e40",
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
