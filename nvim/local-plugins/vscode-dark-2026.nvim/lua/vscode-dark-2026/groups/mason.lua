local M = {}

function M.get(c, _opts)
	return {
		MasonNormal                       = { fg = c.fg_dim, bg = c.bg_panel },
		MasonHeader                       = { fg = c.fg_bright, bg = c.accent_dk, bold = true },
		MasonHeaderSecondary              = { fg = c.fg_bright, bg = c.accent, bold = true },
		MasonHighlight                    = { fg = c.accent_lt },
		MasonHighlightBlock               = { fg = c.bg, bg = c.accent_lt },
		MasonHighlightBlockBold           = { fg = c.bg, bg = c.accent_lt, bold = true },
		MasonHighlightSecondary           = { fg = c.markup_list },
		MasonHighlightBlockSecondary      = { fg = c.bg, bg = c.markup_list },
		MasonHighlightBlockBoldSecondary  = { fg = c.bg, bg = c.markup_list, bold = true },
		MasonMuted                        = { fg = c.fg_mute },
		MasonMutedBlock                   = { fg = c.fg_mute, bg = c.bg_line },
		MasonMutedBlockBold               = { fg = c.fg_mute, bg = c.bg_line, bold = true },
		MasonError                        = { fg = c.error },
		MasonWarning                      = { fg = c.warn },
		MasonHeading                      = { fg = c.fg_dim, bold = true },
	}
end

return M
