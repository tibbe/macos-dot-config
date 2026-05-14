local M = {}

function M.get(c, _opts)
	return {
		GitSignsAdd          = { fg = c.git_added },
		GitSignsChange       = { fg = c.git_modified },
		GitSignsDelete       = { fg = c.git_deleted },
		GitSignsAddNr        = { fg = c.git_added },
		GitSignsChangeNr     = { fg = c.git_modified },
		GitSignsDeleteNr     = { fg = c.git_deleted },
		GitSignsAddLn        = { bg = c.diff_add_bg },
		GitSignsChangeLn     = { bg = c.accent .. "1a" },
		GitSignsDeleteLn     = { bg = c.diff_del_bg },
		GitSignsCurrentLineBlame = { fg = c.fg_disabled, italic = true },
	}
end

return M
