local M = {}

function M.get(c, _opts)
	return {
		-- mini.icons (LSP-kind colors used by various plugins through Mini.icons)
		MiniIconsAzure  = { fg = c.constant },
		MiniIconsBlue   = { fg = c.boolean },
		MiniIconsCyan   = { fg = c.accent_lt },
		MiniIconsGreen  = { fg = c.tag },
		MiniIconsGrey   = { fg = c.fg_mute },
		MiniIconsOrange = { fg = c.markup_list },
		MiniIconsPurple = { fg = c.func },
		MiniIconsRed    = { fg = c.error },
		MiniIconsYellow = { fg = c.func_builtin },

		-- mini.pairs
		MiniPairsBorder = { fg = c.border },
	}
end

return M
