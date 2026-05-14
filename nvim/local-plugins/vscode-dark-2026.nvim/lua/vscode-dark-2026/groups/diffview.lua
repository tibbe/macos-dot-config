local M = {}

function M.get(c, _opts)
	return {
		DiffviewNormal                  = { fg = c.fg_dim, bg = c.bg_terminal },
		DiffviewStatusLine              = { fg = c.fg_dim, bg = c.bg_terminal },
		DiffviewStatusLineNC            = { fg = c.fg_mute, bg = c.bg_terminal },
		DiffviewWinSeparator            = { fg = c.border, bg = c.bg_terminal },
		DiffviewVertSplit               = { fg = c.border, bg = c.bg_terminal },
		DiffviewSignColumn              = { bg = c.bg_terminal },
		DiffviewCursorLine              = { bg = c.bg_line },
		DiffviewCursorLineNr            = { fg = c.fg_dim, bg = c.bg_terminal, bold = true },
		DiffviewEndOfBuffer             = { fg = c.bg_terminal, bg = c.bg_terminal },
		DiffviewFolderName              = { fg = c.fg_dim },
		DiffviewFolderSign              = { fg = c.constant },
		DiffviewFilePanelTitle          = { fg = c.fg_bright, bold = true },
		DiffviewFilePanelCounter        = { fg = c.func, bold = true },
		DiffviewFilePanelFileName       = { fg = c.fg_dim },
		DiffviewFilePanelPath           = { fg = c.fg_mute },
		DiffviewFilePanelInsertions     = { fg = c.git_added },
		DiffviewFilePanelDeletions      = { fg = c.git_deleted },
		DiffviewFilePanelConflicts      = { fg = c.markup_list },
		DiffviewFilePanelRootPath       = { fg = c.constant, bold = true },
		DiffviewFilePanelSelected       = { fg = c.fg_bright, bold = true },
		DiffviewStatusAdded             = { fg = c.git_added },
		DiffviewStatusModified          = { fg = c.git_modified },
		DiffviewStatusDeleted           = { fg = c.git_deleted },
		DiffviewStatusRenamed           = { fg = c.git_untracked },
		DiffviewStatusUntracked         = { fg = c.git_untracked },
		DiffviewStatusIgnored           = { fg = c.git_ignored },
		DiffviewStatusUnknown           = { fg = c.fg_mute },
		DiffviewHash                    = { fg = c.git_added },
		DiffviewReference               = { fg = c.markup_italic },
		DiffviewDim                     = { fg = c.fg_mute },
	}
end

return M
