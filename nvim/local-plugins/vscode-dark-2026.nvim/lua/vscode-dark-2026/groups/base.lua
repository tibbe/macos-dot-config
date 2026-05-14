local M = {}

function M.get(c, opts)
	local bg = opts.transparent and c.none or c.bg

	return {
		-- Editor ----------------------------------------------------------
		Normal           = { fg = c.fg, bg = bg },
		NormalNC         = { fg = c.fg, bg = bg },
		NormalFloat      = { fg = c.fg_dim, bg = c.bg_panel },
		FloatBorder      = { fg = c.border, bg = c.bg_panel },
		FloatTitle       = { fg = c.fg_dim, bg = c.bg_panel, bold = true },
		EndOfBuffer      = { fg = bg, bg = bg },
		Cursor           = { fg = c.bg, bg = c.fg },
		CursorLine       = { bg = c.bg_line },
		CursorColumn     = { bg = c.bg_line },
		ColorColumn      = { bg = c.bg_line },
		LineNr           = { fg = c.line_nr, bg = bg },
		CursorLineNr     = { fg = c.fg, bg = bg, bold = true },
		SignColumn       = { bg = bg },
		FoldColumn       = { fg = c.fg_mute, bg = bg },
		Folded           = { fg = c.fg_mute, bg = c.bg_terminal },
		VertSplit        = { fg = c.border, bg = bg },
		WinSeparator     = { fg = c.border, bg = bg },
		Visual           = { bg = c.bg_select },
		VisualNOS        = { bg = c.bg_select },
		Search           = { bg = c.bg_match },
		IncSearch        = { fg = c.fg_bright, bg = c.bg_select },
		CurSearch        = { fg = c.fg_bright, bg = c.bg_select },
		MatchParen       = { bg = c.accent .. "55", bold = true },
		Whitespace       = { fg = "#8c8c8c4d" },
		NonText          = { fg = c.fg_mute },
		SpecialKey       = { fg = c.fg_mute },
		Conceal          = { fg = c.fg_mute },

		-- Status / Tabs ---------------------------------------------------
		StatusLine       = { fg = c.fg_dim, bg = c.bg_terminal },
		StatusLineNC     = { fg = c.fg_mute, bg = c.bg_terminal },
		TabLine          = { fg = c.fg_mute, bg = c.bg_terminal },
		TabLineSel       = { fg = c.fg_dim, bg = c.bg },
		TabLineFill      = { bg = c.bg_terminal },
		WinBar           = { fg = c.fg_mute, bg = bg },
		WinBarNC         = { fg = c.fg_mute, bg = bg },

		-- Popup / Completion ----------------------------------------------
		Pmenu            = { fg = c.fg_dim, bg = c.bg_panel },
		PmenuSel         = { fg = c.fg_bright, bg = c.accent .. "26" },
		PmenuSbar        = { bg = c.bg_panel },
		PmenuThumb       = { bg = "#83848533" },
		PmenuKind        = { fg = c.constant, bg = c.bg_panel },
		PmenuKindSel     = { fg = c.constant, bg = c.accent .. "26" },
		PmenuExtra       = { fg = c.fg_mute, bg = c.bg_panel },
		PmenuExtraSel    = { fg = c.fg_mute, bg = c.accent .. "26" },
		WildMenu         = { fg = c.fg_dim, bg = c.accent .. "26" },

		-- Messages --------------------------------------------------------
		ErrorMsg         = { fg = c.error },
		WarningMsg       = { fg = c.warn },
		ModeMsg          = { fg = c.fg_dim },
		MoreMsg          = { fg = c.constant },
		Question         = { fg = c.constant },
		Title            = { fg = c.constant, bold = true },
		Directory        = { fg = c.constant },

		-- Spell -----------------------------------------------------------
		SpellBad         = { sp = c.error, undercurl = true },
		SpellCap         = { sp = c.warn, undercurl = true },
		SpellLocal       = { sp = c.info, undercurl = true },
		SpellRare        = { sp = c.func, undercurl = true },

		-- Diff ------------------------------------------------------------
		DiffAdd          = { bg = c.diff_add_bg },
		DiffChange       = { bg = c.accent .. "1a" },
		DiffDelete       = { fg = c.git_deleted, bg = c.diff_del_bg },
		DiffText         = { bg = c.diff_text_add },
		diffAdded        = { fg = c.git_added },
		diffRemoved      = { fg = c.git_deleted },
		diffChanged      = { fg = c.git_modified },
		diffFile         = { fg = c.constant },
		diffLine         = { fg = c.func, bold = true },

		-- Vim legacy syntax groups (used as fallbacks when treesitter isn't
		-- active for the buffer; also drives some plugin highlights via
		-- `link =`).
		Comment          = { fg = c.comment, italic = opts.italic_comments },
		Constant         = { fg = c.constant },
		String           = { fg = c.string },
		Character        = { fg = c.character },
		Number           = { fg = c.number },
		Float            = { fg = c.number },
		Boolean          = { fg = c.boolean },
		Identifier       = { fg = c.variable },
		Function         = { fg = c.func },
		Statement        = { fg = c.keyword_control },
		Conditional      = { fg = c.keyword_control },
		Repeat           = { fg = c.keyword_control },
		Label            = { fg = c.keyword },
		Operator         = { fg = c.operator },
		Keyword          = { fg = c.keyword },
		Exception        = { fg = c.keyword_control },
		PreProc          = { fg = c.preproc },
		Include          = { fg = c.keyword_control },
		Define           = { fg = c.preproc },
		Macro            = { fg = c.preproc },
		PreCondit        = { fg = c.preproc },
		Type             = { fg = c.type },
		StorageClass     = { fg = c.storage },
		Structure        = { fg = c.type },
		Typedef          = { fg = c.type },
		Special          = { fg = c.constant },
		SpecialChar      = { fg = c.string_escape },
		Tag              = { fg = c.tag },
		Delimiter        = { fg = c.punctuation },
		SpecialComment   = { fg = c.comment, italic = opts.italic_comments },
		Debug            = { fg = c.func },
		Underlined       = { fg = c.constant, underline = true },
		Ignore           = { fg = c.fg_disabled },
		Error            = { fg = c.invalid, italic = true },
		Todo             = { fg = c.markup_list, bold = true },
	}
end

return M
