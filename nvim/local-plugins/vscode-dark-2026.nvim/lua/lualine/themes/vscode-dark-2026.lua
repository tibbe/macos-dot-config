local c = require("vscode-dark-2026.colors").setup()

local fg_a = "#ffffff"
local function section(bg, fg) return { fg = fg or c.fg_dim, bg = bg } end

return {
	normal = {
		a = { fg = fg_a, bg = c.accent_dk, gui = "bold" },
		b = section(c.bg_panel),
		c = section(c.bg_terminal, c.fg_mute),
	},
	insert = {
		a = { fg = fg_a, bg = c.git_added, gui = "bold" },
		b = section(c.bg_panel),
		c = section(c.bg_terminal, c.fg_mute),
	},
	visual = {
		a = { fg = fg_a, bg = c.markup_italic, gui = "bold" },
		b = section(c.bg_panel),
		c = section(c.bg_terminal, c.fg_mute),
	},
	replace = {
		a = { fg = fg_a, bg = c.error, gui = "bold" },
		b = section(c.bg_panel),
		c = section(c.bg_terminal, c.fg_mute),
	},
	command = {
		a = { fg = fg_a, bg = c.markup_list, gui = "bold" },
		b = section(c.bg_panel),
		c = section(c.bg_terminal, c.fg_mute),
	},
	terminal = {
		a = { fg = fg_a, bg = c.accent, gui = "bold" },
		b = section(c.bg_panel),
		c = section(c.bg_terminal, c.fg_mute),
	},
	inactive = {
		a = { fg = c.fg_mute, bg = c.bg_terminal },
		b = { fg = c.fg_mute, bg = c.bg_terminal },
		c = { fg = c.fg_mute, bg = c.bg_terminal },
	},
}
