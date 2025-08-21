local M = {}

local function clamp(x)
	return math.min(255, math.max(0, x))
end

local function hex_to_rgb(hex)
	hex = hex:gsub("#", "")
	return {
		tonumber(hex:sub(1, 2), 16),
		tonumber(hex:sub(3, 4), 16),
		tonumber(hex:sub(5, 6), 16),
	}
end

local function rgb_to_hex(rgb)
	return string.format("#%02x%02x%02x", clamp(rgb[1]), clamp(rgb[2]), clamp(rgb[3]))
end

function M.blend(fg, bg, alpha)
	local f = hex_to_rgb(fg)
	local b = hex_to_rgb(bg)
	local a = alpha
	local rgb = {
		(a * f[1] + (1 - a) * b[1]),
		(a * f[2] + (1 - a) * b[2]),
		(a * f[3] + (1 - a) * b[3]),
	}
	return rgb_to_hex(rgb)
end

function M.darken(color, amount, bg)
	return M.blend(bg or "#000000", color, amount)
end

function M.lighten(color, amount, fg)
	return M.blend(color, fg or "#ffffff", amount)
end

function M.hi(group, spec)
	vim.api.nvim_set_hl(0, group, spec)
end

return M
