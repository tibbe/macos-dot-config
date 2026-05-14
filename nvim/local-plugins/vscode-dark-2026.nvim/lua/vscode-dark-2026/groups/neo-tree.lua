local M = {}

function M.get(c, _opts)
	return {
		NeoTreeNormal              = { fg = c.fg_dim, bg = c.bg_terminal },
		NeoTreeNormalNC            = { fg = c.fg_dim, bg = c.bg_terminal },
		NeoTreeEndOfBuffer         = { fg = c.bg_terminal, bg = c.bg_terminal },
		NeoTreeWinSeparator        = { fg = c.border, bg = c.bg_terminal },
		NeoTreeVertSplit           = { fg = c.border, bg = c.bg_terminal },
		NeoTreeStatusLine          = { fg = c.fg_mute, bg = c.bg_terminal },
		NeoTreeStatusLineNC        = { fg = c.fg_mute, bg = c.bg_terminal },

		NeoTreeRootName            = { fg = c.func, bold = true },
		NeoTreeDirectoryName       = { fg = c.fg_dim },
		NeoTreeDirectoryIcon       = { fg = c.constant },
		NeoTreeFileName            = { fg = c.fg_dim },
		NeoTreeFileNameOpened      = { fg = c.fg_bright, bold = true },
		NeoTreeFileIcon            = { fg = c.fg_dim },
		NeoTreeSymbolicLinkTarget  = { fg = c.markup_italic, italic = true },
		NeoTreeIndentMarker        = { fg = "#8384854d" },
		NeoTreeExpander            = { fg = c.fg_mute },
		NeoTreeDotfile             = { fg = c.fg_mute },
		NeoTreeHiddenByName        = { fg = c.fg_mute },
		NeoTreeMessage             = { fg = c.fg_mute, italic = true },
		NeoTreeModified            = { fg = c.markup_list },
		NeoTreeDimText             = { fg = c.fg_mute },
		NeoTreeCursorLine          = { bg = c.accent .. "26" },

		NeoTreeGitAdded            = { fg = c.git_added },
		NeoTreeGitConflict         = { fg = c.git_deleted },
		NeoTreeGitDeleted          = { fg = c.git_deleted },
		NeoTreeGitIgnored          = { fg = c.git_ignored },
		NeoTreeGitModified         = { fg = c.git_modified },
		NeoTreeGitUnstaged         = { fg = c.git_modified },
		NeoTreeGitUntracked        = { fg = c.git_untracked },
		NeoTreeGitStaged           = { fg = c.git_added },

		NeoTreeFloatTitle          = { fg = c.fg_bright, bg = c.bg_panel, bold = true },
		NeoTreeFloatBorder         = { fg = c.border, bg = c.bg_panel },
		NeoTreeTitleBar            = { fg = c.fg_bright, bg = c.accent_dk, bold = true },
	}
end

return M
