local M = {}

function M.get(c, _opts)
	return {
		BufferLineFill                 = { bg = c.bg_terminal },
		BufferLineBackground           = { fg = c.fg_mute, bg = c.bg_terminal },
		BufferLineBufferSelected       = { fg = c.fg_bright, bg = c.bg, bold = true },
		BufferLineBufferVisible        = { fg = c.fg_dim, bg = c.bg_terminal },
		BufferLineSeparator            = { fg = c.border, bg = c.bg_terminal },
		BufferLineSeparatorSelected    = { fg = c.border, bg = c.bg },
		BufferLineSeparatorVisible     = { fg = c.border, bg = c.bg_terminal },
		BufferLineIndicatorSelected    = { fg = c.accent, bg = c.bg },
		BufferLineCloseButton          = { fg = c.fg_mute, bg = c.bg_terminal },
		BufferLineCloseButtonSelected  = { fg = c.fg_bright, bg = c.bg },
		BufferLineCloseButtonVisible   = { fg = c.fg_dim, bg = c.bg_terminal },
		BufferLineModified             = { fg = c.markup_list, bg = c.bg_terminal },
		BufferLineModifiedSelected     = { fg = c.markup_list, bg = c.bg },
		BufferLineModifiedVisible      = { fg = c.markup_list, bg = c.bg_terminal },
		BufferLineDiagnostic           = { fg = c.fg_mute, bg = c.bg_terminal },
		BufferLineDiagnosticSelected   = { fg = c.fg_dim, bg = c.bg },
		BufferLineDiagnosticVisible    = { fg = c.fg_mute, bg = c.bg_terminal },
		BufferLineError                = { fg = c.error, bg = c.bg_terminal },
		BufferLineErrorSelected        = { fg = c.error, bg = c.bg, bold = true },
		BufferLineWarning              = { fg = c.warn, bg = c.bg_terminal },
		BufferLineWarningSelected      = { fg = c.warn, bg = c.bg, bold = true },
		BufferLineInfo                 = { fg = c.info, bg = c.bg_terminal },
		BufferLineInfoSelected         = { fg = c.info, bg = c.bg, bold = true },
		BufferLineHint                 = { fg = c.hint, bg = c.bg_terminal },
		BufferLineHintSelected         = { fg = c.hint, bg = c.bg, bold = true },
	}
end

return M
