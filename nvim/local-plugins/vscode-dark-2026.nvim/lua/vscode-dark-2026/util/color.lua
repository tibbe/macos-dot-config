local M = {}

local function hex_to_rgb(hex)
	hex = hex:gsub("#", "")
	return tonumber(hex:sub(1, 2), 16), tonumber(hex:sub(3, 4), 16), tonumber(hex:sub(5, 6), 16)
end

local function rgb_to_hex(r, g, b)
	return string.format("#%02x%02x%02x", math.floor(r + 0.5), math.floor(g + 0.5), math.floor(b + 0.5))
end

function M.blend(fg, bg, alpha)
	local fr, fg_, fb = hex_to_rgb(fg)
	local br, bg_, bb = hex_to_rgb(bg)
	local r = fr * alpha + br * (1 - alpha)
	local g = fg_ * alpha + bg_ * (1 - alpha)
	local b = fb * alpha + bb * (1 - alpha)
	return rgb_to_hex(r, g, b)
end

function M.darken(hex, amount, bg)
	return M.blend(hex, bg or "#000000", 1 - amount)
end

function M.lighten(hex, amount, fg)
	return M.blend(hex, fg or "#ffffff", 1 - amount)
end

-- Resolve a possibly-8-digit (#RRGGBBAA) hex against a base color into a
-- 6-digit hex. Neovim highlights only accept 6-digit hex; the VS Code theme
-- uses RGBA for translucent overlays (selection, bracket match).
function M.flatten(hex, base)
	if #hex == 7 then return hex end
	local r, g, b = hex_to_rgb(hex:sub(1, 7))
	local a = tonumber(hex:sub(8, 9), 16) / 255
	local br, bg, bb = hex_to_rgb(base)
	return rgb_to_hex(r * a + br * (1 - a), g * a + bg * (1 - a), b * a + bb * (1 - a))
end

return M
