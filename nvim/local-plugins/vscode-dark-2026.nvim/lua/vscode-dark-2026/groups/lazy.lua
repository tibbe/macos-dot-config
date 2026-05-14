local M = {}

function M.get(c, _opts)
	return {
		LazyButton          = { fg = c.fg_dim, bg = c.bg_panel },
		LazyButtonActive    = { fg = c.fg_bright, bg = c.accent_dk, bold = true },
		LazyComment         = { fg = c.comment, italic = true },
		LazyCommit          = { fg = c.git_added },
		LazyCommitIssue     = { fg = c.markup_list },
		LazyCommitScope     = { fg = c.constant, italic = true },
		LazyCommitType      = { fg = c.keyword, bold = true },
		LazyDimmed          = { fg = c.fg_mute },
		LazyDir             = { fg = c.fg_dim },
		LazyH1              = { fg = c.fg_bright, bg = c.accent_dk, bold = true },
		LazyH2              = { fg = c.fg_bright, bold = true },
		LazyNoCond          = { fg = c.fg_mute },
		LazyNormal          = { fg = c.fg_dim, bg = c.bg_panel },
		LazyProgressDone    = { fg = c.git_added, bold = true },
		LazyProgressTodo    = { fg = c.fg_mute },
		LazyProp            = { fg = c.variable },
		LazyReasonCmd       = { fg = c.func },
		LazyReasonEvent     = { fg = c.markup_italic },
		LazyReasonFt        = { fg = c.tag },
		LazyReasonImport    = { fg = c.keyword_control },
		LazyReasonKeys      = { fg = c.keyword },
		LazyReasonPlugin    = { fg = c.type },
		LazyReasonRequire   = { fg = c.keyword_control },
		LazyReasonRuntime   = { fg = c.markup_italic },
		LazyReasonSource    = { fg = c.string },
		LazyReasonStart     = { fg = c.git_added },
		LazyReasonTask      = { fg = c.fg_dim },
		LazySpecial         = { fg = c.markup_list },
		LazyTaskOutput      = { fg = c.fg_mute },
		LazyUrl             = { fg = c.string, underline = true },
		LazyValue           = { fg = c.variable },
	}
end

return M
