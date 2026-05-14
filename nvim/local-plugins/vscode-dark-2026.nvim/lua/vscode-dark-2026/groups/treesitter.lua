local M = {}

function M.get(c, opts)
	return {
		-- Comments --------------------------------------------------------
		["@comment"]                 = { link = "Comment" },
		["@comment.documentation"]   = { fg = c.comment, italic = opts.italic_comments },
		["@string.documentation"]    = { fg = c.comment, italic = opts.italic_comments },

		-- Punctuation -----------------------------------------------------
		-- No TM rule matches generic brackets/delimiters → editor.foreground.
		-- Interpolation delimiters ${...} match punctuation.section.embedded.
		["@punctuation.delimiter"]   = { fg = c.punctuation },
		["@punctuation.bracket"]     = { fg = c.punctuation },
		["@punctuation.special"]     = { fg = c.keyword },

		-- Strings ---------------------------------------------------------
		["@string"]                  = { fg = c.string },
		["@string.regex"]            = { fg = c.string_regex },
		["@string.regexp"]           = { fg = c.string_regex },
		["@string.escape"]           = { fg = c.string_escape },
		["@string.special"]          = { fg = c.string_placeholder },
		["@string.special.symbol"]   = { fg = c.string_placeholder },
		["@string.special.url"]      = { fg = c.string, underline = true },
		["@character"]               = { fg = c.character },
		["@character.special"]       = { fg = c.string_escape },

		-- Numbers / Booleans ----------------------------------------------
		["@number"]                  = { fg = c.number },
		["@number.float"]            = { fg = c.number },
		["@float"]                   = { fg = c.number },
		["@boolean"]                 = { fg = c.boolean },

		-- Functions / Methods ---------------------------------------------
		["@function"]                = { fg = c.func },
		["@function.call"]           = { fg = c.func },
		["@function.builtin"]        = { fg = c.func_builtin },
		["@function.macro"]          = { fg = c.preproc },
		["@function.method"]         = { fg = c.func },
		["@function.method.call"]    = { fg = c.func },
		["@method"]                  = { fg = c.func },
		["@method.call"]             = { fg = c.func },
		["@constructor"]             = { fg = c.func },
		["@parameter"]               = { fg = c.variable },

		-- Keywords --------------------------------------------------------
		-- Generic / declarative (def/class/var/let/const) → red.
		-- Control flow / import / return / throw → magenta (dark_plus).
		-- Wordlike operators (and/or/not/in/is) → blue (dark_vs).
		["@keyword"]                 = { fg = c.keyword },
		["@keyword.function"]        = { fg = c.keyword },
		["@keyword.type"]            = { fg = c.keyword },
		["@keyword.storage"]         = { fg = c.keyword },
		["@keyword.modifier"]        = { fg = c.storage },
		["@keyword.operator"]        = { fg = c.keyword_operator },
		["@keyword.return"]          = { fg = c.keyword_control },
		["@keyword.conditional"]     = { fg = c.keyword_control },
		["@keyword.repeat"]          = { fg = c.keyword_control },
		["@keyword.exception"]       = { fg = c.keyword_control },
		["@keyword.import"]          = { fg = c.keyword_control },
		["@keyword.coroutine"]       = { fg = c.keyword_control },
		["@keyword.directive"]       = { fg = c.preproc },
		["@conditional"]             = { fg = c.keyword_control },
		["@repeat"]                  = { fg = c.keyword_control },
		["@exception"]               = { fg = c.keyword_control },
		["@include"]                 = { fg = c.keyword_control },
		["@label"]                   = { fg = c.keyword },

		-- Operators -------------------------------------------------------
		["@operator"]                = { fg = c.operator },

		-- Types -----------------------------------------------------------
		-- dark_plus's entity.name.type (3 segs) and support.type (2 segs)
		-- win over 2026-dark's entity.name (2 segs) for class/interface/
		-- struct/enum names and builtin types like `int`/`str`.
		["@type"]                    = { fg = c.type },
		["@type.builtin"]            = { fg = c.type },
		["@type.definition"]         = { fg = c.type },
		["@type.qualifier"]          = { fg = c.storage },
		["@storageclass"]            = { fg = c.storage },
		["@attribute"]               = { fg = c.func },

		-- Variables / Fields / Properties ---------------------------------
		-- variable.other (2026-dark, 2 segs) shadows variable (1 seg).
		["@variable"]                = { fg = c.variable },
		["@variable.builtin"]        = { fg = c.variable_builtin },
		["@variable.parameter"]      = { fg = c.variable },
		["@variable.member"]         = { fg = c.variable },
		["@field"]                   = { fg = c.variable },
		["@property"]                = { fg = c.variable },

		-- Constants -------------------------------------------------------
		["@constant"]                = { fg = c.constant },
		["@constant.builtin"]        = { fg = c.boolean },
		["@constant.macro"]          = { fg = c.preproc },
		["@namespace"]               = { fg = c.type },
		["@module"]                  = { fg = c.type },
		["@symbol"]                  = { fg = c.constant },

		-- Preprocessor ----------------------------------------------------
		["@preproc"]                 = { fg = c.preproc },
		["@define"]                  = { fg = c.preproc },

		-- Tags (HTML/JSX/XML) ---------------------------------------------
		["@tag"]                     = { fg = c.tag },
		["@tag.builtin"]             = { fg = c.tag },
		["@tag.attribute"]           = { fg = c.tag_attribute },
		["@tag.delimiter"]           = { fg = c.tag_delim },

		-- Markup ----------------------------------------------------------
		["@markup.heading"]          = { fg = c.markup_heading, bold = true },
		["@markup.heading.1"]        = { fg = c.markup_heading, bold = true },
		["@markup.heading.2"]        = { fg = c.markup_heading, bold = true },
		["@markup.heading.3"]        = { fg = c.markup_heading, bold = true },
		["@markup.heading.4"]        = { fg = c.markup_heading, bold = true },
		["@markup.heading.5"]        = { fg = c.markup_heading, bold = true },
		["@markup.heading.6"]        = { fg = c.markup_heading, bold = true },
		["@markup.strong"]           = { fg = c.markup_bold, bold = true },
		["@markup.italic"]           = { fg = c.markup_italic, italic = true },
		["@markup.underline"]        = { underline = true },
		["@markup.strikethrough"]    = { strikethrough = true },
		["@markup.quote"]            = { fg = c.markup_quote },
		["@markup.raw"]              = { fg = c.markup_raw },
		["@markup.raw.block"]        = { fg = c.markup_raw },
		["@markup.link"]             = { fg = c.string },
		["@markup.link.label"]       = { fg = c.string },
		["@markup.link.url"]         = { fg = c.string, underline = true },
		["@markup.list"]             = { fg = c.markup_list },
		["@markup.list.checked"]     = { fg = c.git_added },
		["@markup.list.unchecked"]   = { fg = c.fg_mute },

		-- Diff (in code blocks / git diffs) -------------------------------
		["@diff.plus"]               = { fg = c.diff_added },
		["@diff.minus"]              = { fg = c.diff_deleted },
		["@diff.delta"]              = { fg = c.diff_changed },

		-- Misc ------------------------------------------------------------
		["@text"]                    = { fg = c.fg },
		["@text.strong"]             = { fg = c.markup_bold, bold = true },
		["@text.emphasis"]           = { fg = c.markup_italic, italic = true },
		["@text.underline"]          = { underline = true },
		["@text.strike"]             = { strikethrough = true },
		["@text.title"]              = { fg = c.markup_heading, bold = true },
		["@text.literal"]            = { fg = c.markup_raw },
		["@text.uri"]                = { fg = c.string, underline = true },
		["@text.reference"]          = { fg = c.string },
		["@text.todo"]               = { fg = c.markup_list, bold = true },
		["@text.note"]               = { fg = c.info },
		["@text.warning"]            = { fg = c.warn },
		["@text.danger"]             = { fg = c.error },
		["@error"]                   = { fg = c.invalid },
	}
end

return M
