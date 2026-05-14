local M = {}

function M.get(c, _opts)
	return {
		GrugFarHelpHeader        = { fg = c.fg_bright, bold = true },
		GrugFarHelpHeaderKey     = { fg = c.func, bold = true },
		GrugFarHelpWinHeader     = { fg = c.fg_bright, bg = c.accent_dk, bold = true },
		GrugFarInputLabel        = { fg = c.constant, bold = true },
		GrugFarInputPlaceholder  = { fg = c.fg_disabled, italic = true },
		GrugFarResultsHeader     = { fg = c.fg_bright, bold = true },
		GrugFarResultsLineNr     = { fg = c.fg_mute },
		GrugFarResultsLineColumn = { fg = c.fg_mute },
		GrugFarResultsMatch      = { fg = c.markup_list, bold = true },
		GrugFarResultsMatchAdded = { fg = c.git_added, bold = true },
		GrugFarResultsMatchRemoved = { fg = c.git_deleted, bold = true, strikethrough = true },
		GrugFarResultsChangeIndicator = { fg = c.git_modified },
		GrugFarResultsPath       = { fg = c.constant, bold = true },
		GrugFarResultsStats      = { fg = c.fg_mute },
		GrugFarHelpHeaderCount   = { fg = c.func, bold = true },
	}
end

return M
