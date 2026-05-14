local M = {}

function M.setup()
	-- Colors resolved from VS Code's 2026 Dark theme by walking its include
	-- chain (2026-dark → dark_modern → dark_plus → dark_vs) and applying
	-- TextMate's longest-scope-match rule. Each comment lists the winning
	-- TM scope and the source file it was defined in.
	local c = {
		-- Editor / UI -----------------------------------------------------
		bg              = "#121314", -- editor.background
		bg_terminal     = "#191a1b", -- terminal.background
		bg_panel        = "#202122", -- editorWidget.background
		bg_line         = "#242526", -- editor.lineHighlightBackground
		bg_hover        = "#FFFFFF0D", -- list.hoverBackground
		bg_select       = "#276782", -- editor.selectionBackground (alpha stripped)
		bg_select_dim   = "#27678260",
		bg_match        = "#27678280",

		fg              = "#bbbebf", -- editor.foreground
		fg_dim          = "#bfbfbf",
		fg_mute         = "#8c8c8c", -- descriptionForeground
		fg_disabled     = "#555555",
		fg_bright       = "#ededed",

		border          = "#2a2b2c",
		border_strong   = "#333536",
		line_nr         = "#858889",

		accent          = "#3994bc",
		accent_lt       = "#48a0c7",
		accent_dk       = "#297aa0",

		-- Syntax (semantic name → effective hex) --------------------------
		comment         = "#8b949e", -- 2026-dark   comment
		string          = "#a5d6ff", -- 2026-dark   string
		string_regex    = "#d16969", -- dark_vs     string.regexp
		string_escape   = "#d7ba7d", -- dark_plus   constant.character.escape
		string_placeholder = "#9cdcfe", -- dark_plus constant.other.placeholder

		number          = "#b5cea8", -- dark_vs     constant.numeric
		boolean         = "#569cd6", -- dark_vs     constant.language

		keyword         = "#ff7b72", -- 2026-dark   keyword, storage.type
		keyword_control = "#c586c0", -- dark_plus   keyword.control
		keyword_operator= "#569cd6", -- dark_vs     keyword.operator.wordlike
		operator        = "#d4d4d4", -- dark_vs     keyword.operator
		punctuation     = "#cccccc", -- dark_modern editor.foreground (no rule)

		func            = "#d2a8ff", -- 2026-dark   entity.name.function
		func_builtin    = "#dcdcaa", -- dark_plus   support.function

		type            = "#4ec9b0", -- dark_plus   entity.name.type, support.type

		variable        = "#c9d1d9", -- 2026-dark   variable.other
		variable_builtin= "#79c0ff", -- 2026-dark   variable.language
		constant        = "#79c0ff", -- 2026-dark   constant, variable.other.constant

		character       = "#569cd6", -- dark_plus   constant.character

		tag             = "#7ee787", -- 2026-dark   entity.name.tag
		tag_attribute   = "#9cdcfe", -- dark_vs     entity.other.attribute-name
		tag_delim       = "#808080", -- dark_vs     punctuation.definition.tag

		preproc         = "#569cd6", -- dark_vs     meta.preprocessor
		storage         = "#569cd6", -- dark_vs     storage.modifier

		invalid         = "#f44747", -- dark_vs     invalid

		-- Markup ----------------------------------------------------------
		markup_heading  = "#569cd6", -- dark_vs     markup.heading
		markup_bold     = "#569cd6", -- dark_vs     markup.bold
		markup_italic   = "#c586c0", -- dark_vs     markup.italic
		markup_quote    = "#6a9955", -- dark_vs     punctuation.definition.quote.markdown
		markup_raw      = "#ce9178", -- dark_vs     markup.inline.raw
		markup_list     = "#ffa657", -- 2026-dark   punctuation.definition.list.begin.markdown

		-- Diff / Git ------------------------------------------------------
		diff_added      = "#b5cea8", -- dark_vs     markup.inserted
		diff_deleted    = "#ce9178", -- dark_vs     markup.deleted
		diff_changed    = "#569cd6", -- dark_vs     markup.changed

		git_added       = "#73c991", -- editor decoration
		git_modified    = "#e5ba7d",
		git_deleted     = "#f48771",
		git_untracked   = "#73c991",
		git_ignored     = "#8c8c8c",

		diff_add_bg     = "#347d3926",
		diff_del_bg     = "#c93c3726",
		diff_text_add   = "#57ab5a4d",
		diff_text_del   = "#f470674d",

		-- Diagnostics -----------------------------------------------------
		error           = "#f48771",
		warn            = "#e5ba7d",
		info            = "#3a94bc",
		hint            = "#79c0ff",

		-- Terminal ANSI palette (VS Code defaults) ------------------------
		ansi = {
			black          = "#000000",
			red            = "#cd3131",
			green          = "#0dbc79",
			yellow         = "#e5e510",
			blue           = "#2472c8",
			magenta        = "#bc3fbc",
			cyan           = "#11a8cd",
			white          = "#e5e5e5",
			bright_black   = "#666666",
			bright_red     = "#f14c4c",
			bright_green   = "#23d18b",
			bright_yellow  = "#f5f543",
			bright_blue    = "#3b8eea",
			bright_magenta = "#d670d6",
			bright_cyan    = "#29b8db",
			bright_white   = "#e5e5e5",
		},

		none = "NONE",
	}

	return c
end

return M
