local M = {}

function M.get(c, _opts)
	return {
		-- Picker
		SnacksPicker                   = { fg = c.fg_dim, bg = c.bg_panel },
		SnacksPickerBorder             = { fg = c.border, bg = c.bg_panel },
		SnacksPickerTitle              = { fg = c.fg_bright, bg = c.accent_dk, bold = true },
		SnacksPickerInput              = { fg = c.fg_dim, bg = c.bg_panel },
		SnacksPickerInputBorder        = { fg = c.border, bg = c.bg_panel },
		SnacksPickerInputTitle         = { fg = c.fg_bright, bg = c.accent_dk, bold = true },
		SnacksPickerList               = { fg = c.fg_dim, bg = c.bg_panel },
		SnacksPickerListBorder         = { fg = c.border, bg = c.bg_panel },
		SnacksPickerListTitle          = { fg = c.fg_bright, bg = c.bg_panel, bold = true },
		SnacksPickerPreview            = { fg = c.fg_dim, bg = c.bg_panel },
		SnacksPickerPreviewBorder      = { fg = c.border, bg = c.bg_panel },
		SnacksPickerPreviewTitle       = { fg = c.fg_bright, bg = c.accent_dk, bold = true },
		SnacksPickerCursorLine         = { bg = c.accent .. "26" },
		SnacksPickerSelected           = { fg = c.fg_bright, bg = c.accent .. "26" },
		SnacksPickerMatch              = { fg = c.accent_lt, bold = true },
		SnacksPickerToggle             = { fg = c.accent_lt },
		SnacksPickerPick               = { fg = c.fg_bright },
		SnacksPickerPickWinCurrent     = { fg = c.markup_list, bold = true },
		SnacksPickerPickWinSel         = { fg = c.constant, bold = true },
		SnacksPickerDir                = { fg = c.fg_mute },
		SnacksPickerFile               = { fg = c.fg_dim },
		SnacksPickerGitStatusAdded     = { fg = c.git_added },
		SnacksPickerGitStatusModified  = { fg = c.git_modified },
		SnacksPickerGitStatusDeleted   = { fg = c.git_deleted },
		SnacksPickerGitStatusUntracked = { fg = c.git_untracked },
		SnacksPickerGitStatusIgnored   = { fg = c.git_ignored },

		-- Dashboard
		SnacksDashboardNormal          = { fg = c.fg_dim, bg = "NONE" },
		SnacksDashboardHeader          = { fg = c.accent_lt, bold = true },
		SnacksDashboardTitle           = { fg = c.fg_bright, bold = true },
		SnacksDashboardDesc            = { fg = c.fg_dim },
		SnacksDashboardKey             = { fg = c.func, bold = true },
		SnacksDashboardIcon            = { fg = c.constant },
		SnacksDashboardFile            = { fg = c.fg_dim },
		SnacksDashboardDir             = { fg = c.fg_mute },
		SnacksDashboardFooter          = { fg = c.fg_mute, italic = true },
		SnacksDashboardSpecial         = { fg = c.markup_list },

		-- Notifier
		SnacksNotifierInfo             = { fg = c.info },
		SnacksNotifierWarn             = { fg = c.warn },
		SnacksNotifierError            = { fg = c.error },
		SnacksNotifierDebug            = { fg = c.func },
		SnacksNotifierTrace            = { fg = c.fg_mute },
		SnacksNotifierBorderInfo       = { fg = c.info, bg = c.bg_panel },
		SnacksNotifierBorderWarn       = { fg = c.warn, bg = c.bg_panel },
		SnacksNotifierBorderError      = { fg = c.error, bg = c.bg_panel },
		SnacksNotifierBorderDebug      = { fg = c.func, bg = c.bg_panel },
		SnacksNotifierBorderTrace      = { fg = c.fg_mute, bg = c.bg_panel },
		SnacksNotifierIconInfo         = { fg = c.info },
		SnacksNotifierIconWarn         = { fg = c.warn },
		SnacksNotifierIconError        = { fg = c.error },
		SnacksNotifierIconDebug        = { fg = c.func },
		SnacksNotifierIconTrace        = { fg = c.fg_mute },
		SnacksNotifierTitleInfo        = { fg = c.info, bold = true },
		SnacksNotifierTitleWarn        = { fg = c.warn, bold = true },
		SnacksNotifierTitleError       = { fg = c.error, bold = true },
		SnacksNotifierTitleDebug       = { fg = c.func, bold = true },
		SnacksNotifierTitleTrace       = { fg = c.fg_mute, bold = true },

		-- Indent (snacks.indent)
		SnacksIndent                   = { fg = "#8384854d" },
		SnacksIndentScope              = { fg = "#838485" },

		-- Input
		SnacksInputBorder              = { fg = c.accent, bg = c.bg_panel },
		SnacksInputTitle               = { fg = c.fg_bright, bg = c.accent_dk, bold = true },
		SnacksInputNormal              = { fg = c.fg_dim, bg = c.bg_panel },
	}
end

return M
