local M = {}

function M.get(c, _opts)
	return {
		TodoBgFix       = { fg = c.bg, bg = c.error, bold = true },
		TodoBgHack      = { fg = c.bg, bg = c.warn, bold = true },
		TodoBgNote      = { fg = c.bg, bg = c.info, bold = true },
		TodoBgPerf      = { fg = c.bg, bg = c.func, bold = true },
		TodoBgTest      = { fg = c.bg, bg = c.markup_italic, bold = true },
		TodoBgTodo      = { fg = c.bg, bg = c.markup_list, bold = true },
		TodoBgWarn      = { fg = c.bg, bg = c.warn, bold = true },

		TodoFgFix       = { fg = c.error },
		TodoFgHack      = { fg = c.warn },
		TodoFgNote      = { fg = c.info },
		TodoFgPerf      = { fg = c.func },
		TodoFgTest      = { fg = c.markup_italic },
		TodoFgTodo      = { fg = c.markup_list },
		TodoFgWarn      = { fg = c.warn },

		TodoSignFix     = { fg = c.error },
		TodoSignHack    = { fg = c.warn },
		TodoSignNote    = { fg = c.info },
		TodoSignPerf    = { fg = c.func },
		TodoSignTest    = { fg = c.markup_italic },
		TodoSignTodo    = { fg = c.markup_list },
		TodoSignWarn    = { fg = c.warn },
	}
end

return M
