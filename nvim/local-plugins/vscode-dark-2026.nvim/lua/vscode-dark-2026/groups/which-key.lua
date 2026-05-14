local M = {}

function M.get(c, _opts)
	return {
		WhichKey           = { fg = c.func },
		WhichKeyGroup      = { fg = c.constant },
		WhichKeyDesc       = { fg = c.fg_dim },
		WhichKeySeparator  = { fg = c.fg_mute },
		WhichKeyFloat      = { bg = c.bg_panel },
		WhichKeyBorder     = { fg = c.border, bg = c.bg_panel },
		WhichKeyValue      = { fg = c.fg_mute },
		WhichKeyTitle      = { fg = c.fg_bright, bg = c.accent_dk, bold = true },
	}
end

return M
