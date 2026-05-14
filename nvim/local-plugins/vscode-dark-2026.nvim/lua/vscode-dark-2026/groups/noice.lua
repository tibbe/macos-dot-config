local M = {}

function M.get(c, _opts)
	return {
		NoiceCmdline               = { fg = c.fg_dim, bg = c.bg_panel },
		NoiceCmdlineIcon           = { fg = c.constant },
		NoiceCmdlineIconSearch     = { fg = c.markup_list },
		NoiceCmdlinePopup          = { fg = c.fg_dim, bg = c.bg_panel },
		NoiceCmdlinePopupBorder    = { fg = c.accent, bg = c.bg_panel },
		NoiceCmdlinePopupBorderSearch = { fg = c.markup_list, bg = c.bg_panel },
		NoiceCmdlinePopupTitle     = { fg = c.fg_bright, bg = c.accent_dk, bold = true },
		NoiceCmdlinePrompt         = { fg = c.fg_dim, bold = true },

		NoicePopup                 = { fg = c.fg_dim, bg = c.bg_panel },
		NoicePopupBorder           = { fg = c.border, bg = c.bg_panel },
		NoicePopupmenu             = { fg = c.fg_dim, bg = c.bg_panel },
		NoicePopupmenuBorder       = { fg = c.border, bg = c.bg_panel },
		NoicePopupmenuMatch        = { fg = c.accent_lt, bold = true },
		NoicePopupmenuSelected     = { fg = c.fg_bright, bg = c.accent .. "26" },

		NoiceConfirm               = { fg = c.fg_dim, bg = c.bg_panel },
		NoiceConfirmBorder         = { fg = c.border, bg = c.bg_panel },

		NoiceMini                  = { fg = c.fg_dim, bg = c.bg_panel },
		NoiceLspProgressClient     = { fg = c.constant },
		NoiceLspProgressTitle      = { fg = c.fg_dim, italic = true },
		NoiceLspProgressSpinner    = { fg = c.func },
		NoiceFormatProgressDone    = { fg = c.git_added },
		NoiceFormatProgressTodo    = { fg = c.fg_mute },

		NoiceVirtualText           = { fg = c.fg_mute, italic = true },
	}
end

return M
