local M = {}

local group_modules = {
	"base",
	"treesitter",
	"lsp",
	"blink",
	"bufferline",
	"diffview",
	"flash",
	"gitsigns",
	"grug-far",
	"lazy",
	"mason",
	"mini",
	"neo-tree",
	"noice",
	"snacks",
	"todo-comments",
	"trouble",
	"which-key",
}

function M.build(opts)
	local c = require("vscode-dark-2026.colors").setup()

	-- Apply user color overrides before highlights are built.
	local user = opts.on_colors(c)
	if type(user) == "table" then c = user end

	local hl = {}
	for _, name in ipairs(group_modules) do
		local mod = require("vscode-dark-2026.groups." .. name)
		for group, spec in pairs(mod.get(c, opts)) do
			hl[group] = spec
		end
	end

	-- Apply user highlight overrides after all groups are built.
	local user_hl = opts.on_highlights(hl, c)
	if type(user_hl) == "table" then hl = user_hl end

	return hl, c
end

function M.apply(opts)
	local hl, c = M.build(opts)
	local flatten = require("vscode-dark-2026.util.color").flatten
	for group, spec in pairs(hl) do
		-- nvim_set_hl only accepts 6-digit hex; flatten any RGBA values
		-- in fg/bg/sp against the editor background.
		for _, key in ipairs({ "fg", "bg", "sp" }) do
			local v = spec[key]
			if type(v) == "string" and v:sub(1, 1) == "#" and #v == 9 then
				spec[key] = flatten(v, c.bg)
			end
		end
		vim.api.nvim_set_hl(0, group, spec)
	end
	if opts.terminal_colors then
		local ansi = c.ansi
		vim.g.terminal_color_0  = ansi.black
		vim.g.terminal_color_1  = ansi.red
		vim.g.terminal_color_2  = ansi.green
		vim.g.terminal_color_3  = ansi.yellow
		vim.g.terminal_color_4  = ansi.blue
		vim.g.terminal_color_5  = ansi.magenta
		vim.g.terminal_color_6  = ansi.cyan
		vim.g.terminal_color_7  = ansi.white
		vim.g.terminal_color_8  = ansi.bright_black
		vim.g.terminal_color_9  = ansi.bright_red
		vim.g.terminal_color_10 = ansi.bright_green
		vim.g.terminal_color_11 = ansi.bright_yellow
		vim.g.terminal_color_12 = ansi.bright_blue
		vim.g.terminal_color_13 = ansi.bright_magenta
		vim.g.terminal_color_14 = ansi.bright_cyan
		vim.g.terminal_color_15 = ansi.bright_white
	end
end

return M
