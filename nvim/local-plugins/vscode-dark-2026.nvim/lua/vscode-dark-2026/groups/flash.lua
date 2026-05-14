local M = {}

function M.get(c, _opts)
	return {
		FlashLabel       = { fg = c.bg, bg = c.markup_list, bold = true },
		FlashMatch       = { fg = c.fg_bright, bg = c.bg_match },
		FlashCurrent     = { fg = c.fg_bright, bg = c.bg_select },
		FlashBackdrop    = { fg = c.fg_disabled },
		FlashPrompt      = { fg = c.fg_dim, bg = c.bg_panel },
		FlashPromptIcon  = { fg = c.markup_list },
		FlashCursor      = { bg = c.fg, fg = c.bg },
	}
end

return M
