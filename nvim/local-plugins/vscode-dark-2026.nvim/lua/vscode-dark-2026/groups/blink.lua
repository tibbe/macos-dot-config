local M = {}

function M.get(c, _opts)
	return {
		BlinkCmpMenu                   = { fg = c.fg_dim, bg = c.bg_panel },
		BlinkCmpMenuBorder             = { fg = c.border, bg = c.bg_panel },
		BlinkCmpMenuSelection          = { fg = c.fg_bright, bg = c.accent .. "26" },
		BlinkCmpScrollBarThumb         = { bg = "#83848533" },
		BlinkCmpScrollBarGutter        = { bg = c.bg_panel },

		BlinkCmpLabel                  = { fg = c.fg_dim },
		BlinkCmpLabelDeprecated        = { fg = c.fg_mute, strikethrough = true },
		BlinkCmpLabelMatch             = { fg = c.accent_lt, bold = true },
		BlinkCmpLabelDetail            = { fg = c.fg_mute },
		BlinkCmpLabelDescription       = { fg = c.fg_mute },

		BlinkCmpKind                   = { fg = c.func, bg = c.bg_panel },
		BlinkCmpKindClass              = { fg = c.type },
		BlinkCmpKindInterface          = { fg = c.type },
		BlinkCmpKindStruct             = { fg = c.type },
		BlinkCmpKindEnum               = { fg = c.type },
		BlinkCmpKindTypeParameter      = { fg = c.type },
		BlinkCmpKindFunction           = { fg = c.func },
		BlinkCmpKindMethod             = { fg = c.func },
		BlinkCmpKindConstructor        = { fg = c.func },
		BlinkCmpKindVariable           = { fg = c.variable },
		BlinkCmpKindField              = { fg = c.variable },
		BlinkCmpKindProperty           = { fg = c.variable },
		BlinkCmpKindEnumMember         = { fg = c.constant },
		BlinkCmpKindConstant           = { fg = c.constant },
		BlinkCmpKindKeyword            = { fg = c.keyword },
		BlinkCmpKindText               = { fg = c.fg_dim },
		BlinkCmpKindString             = { fg = c.string },
		BlinkCmpKindSnippet            = { fg = c.tag },
		BlinkCmpKindModule             = { fg = c.type },
		BlinkCmpKindFile               = { fg = c.fg_dim },
		BlinkCmpKindFolder             = { fg = c.constant },
		BlinkCmpKindReference          = { fg = c.variable },
		BlinkCmpKindOperator           = { fg = c.operator },
		BlinkCmpKindValue              = { fg = c.variable },
		BlinkCmpKindEvent              = { fg = c.variable },
		BlinkCmpKindUnit               = { fg = c.number },
		BlinkCmpKindColor              = { fg = c.func },

		BlinkCmpSource                 = { fg = c.fg_mute },
		BlinkCmpGhostText              = { fg = c.fg_disabled, italic = true },

		BlinkCmpDoc                    = { fg = c.fg_dim, bg = c.bg_panel },
		BlinkCmpDocBorder              = { fg = c.border, bg = c.bg_panel },
		BlinkCmpDocSeparator           = { fg = c.border, bg = c.bg_panel },
		BlinkCmpDocCursorLine          = { bg = c.bg_line },

		BlinkCmpSignatureHelp                  = { fg = c.fg_dim, bg = c.bg_panel },
		BlinkCmpSignatureHelpBorder            = { fg = c.border, bg = c.bg_panel },
		BlinkCmpSignatureHelpActiveParameter   = { fg = c.markup_list, bold = true },
	}
end

return M
