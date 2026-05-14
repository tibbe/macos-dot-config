return {
	{
		"rosekamallove/vscode-dark-2026.nvim",
		priority = 1000,
		init = function()
			-- The plugin only consults 2026-dark.json's own tokenColors and
			-- misses the inheritance chain (dark_modern → dark_plus → dark_vs).
			-- TextMate's longest-scope-match rule means many of dark_plus and
			-- dark_vs's narrower scopes still win in real VS Code. Reapply
			-- those resolved colors here.
			local group = vim.api.nvim_create_augroup("vscode-dark-2026-overrides", { clear = true })
			vim.api.nvim_create_autocmd("ColorScheme", {
				group = group,
				pattern = "vscode-dark-2026",
				callback = function()
					local p = {
						gray         = "#c9d1d9", -- variable.other (2026-dark)
						red          = "#ff7b72", -- keyword, storage.type (2026-dark)
						green        = "#7ee787", -- entity.name.tag (2026-dark)
						orange       = "#ffa657", -- entity.name, variable (2026-dark)
						blue         = "#79c0ff", -- constant, variable.language (2026-dark)
						purple       = "#d2a8ff", -- entity.name.function (2026-dark)
						string_blue  = "#a5d6ff", -- string (2026-dark)
						teal         = "#4ec9b0", -- entity.name.type, support.type (dark_plus)
						yellow       = "#dcdcaa", -- support.function (dark_plus)
						magenta      = "#c586c0", -- keyword.control (dark_plus)
						light_blue   = "#9cdcfe", -- entity.other.attribute-name (dark_vs); placeholders (dark_plus)
						vs_blue      = "#569cd6", -- constant.language, keyword.operator.wordlike, meta.preprocessor (dark_vs)
						num_green    = "#b5cea8", -- constant.numeric (dark_vs)
						regex_red    = "#d16969", -- string.regexp (dark_vs)
						escape_yellow= "#d7ba7d", -- constant.character.escape (dark_plus)
						str_orange   = "#ce9178", -- markup.inline.raw, markup.deleted (dark_vs)
						quote_green  = "#6a9955", -- punctuation.definition.quote.markdown (dark_vs)
						op_white     = "#d4d4d4", -- keyword.operator (dark_vs)
						editor_fg    = "#cccccc", -- editor.foreground (dark_modern); plain punctuation
						tag_gray     = "#808080", -- punctuation.definition.tag (dark_vs)
						invalid      = "#f44747", -- invalid (dark_vs)
					}

					local function set_many(color, groups, extra)
						for _, g in ipairs(groups) do
							local opts = { fg = color }
							if extra then
								for k, v in pairs(extra) do opts[k] = v end
							end
							vim.api.nvim_set_hl(0, g, opts)
						end
					end

					-- Types: class/interface/struct/enum names, builtin types,
					-- namespaces. dark_plus's entity.name.type (3 segs) beats
					-- 2026-dark's entity.name (2 segs).
					set_many(p.teal, {
						"Type", "StorageClass", "Structure", "Typedef",
						"@type", "@type.builtin", "@type.definition",
						"@lsp.type.class", "@lsp.type.type", "@lsp.type.interface",
						"@lsp.type.struct", "@lsp.type.enum", "@lsp.type.typeParameter",
						"@lsp.type.namespace",
						"@namespace", "@module",
						"@lsp.typemod.type.defaultLibrary",
					})

					-- User-defined function names (declaration, call, method, decorator):
					-- entity.name.function (2026-dark, 3 segs).
					set_many(p.purple, {
						"Function", "@function", "@function.call",
						"@method", "@method.call", "@constructor",
						"@lsp.type.function", "@lsp.type.method", "@lsp.type.decorator",
						"@attribute",
					})

					-- Builtin functions (print, len): support.function (dark_plus).
					set_many(p.yellow, {
						"@function.builtin",
						"@lsp.typemod.function.defaultLibrary",
					})

					-- Control-flow keywords (if/return/throw/import/yield):
					-- keyword.control (dark_plus, 2 segs).
					set_many(p.magenta, {
						"Statement", "Conditional", "Repeat", "Exception", "Include",
						"@conditional", "@repeat", "@exception", "@include",
						"@keyword.conditional", "@keyword.repeat", "@keyword.return",
						"@keyword.exception", "@keyword.import", "@keyword.coroutine",
					})

					-- Declarative keywords (class/def/function/var/let/const):
					-- storage.type or generic keyword (2026-dark).
					set_many(p.red, {
						"Keyword", "Label",
						"@keyword", "@keyword.function", "@keyword.type",
						"@keyword.storage", "@label",
						"@lsp.type.keyword",
					})

					-- Wordlike operators (and/or/not/in/is): keyword.operator.wordlike (dark_vs).
					set_many(p.vs_blue, { "@keyword.operator" })

					-- Symbolic operators (+ - == etc.): keyword.operator (dark_vs, 2 segs).
					set_many(p.op_white, {
						"Operator", "@operator", "@lsp.type.operator",
					})

					-- Punctuation / brackets / delimiters: no token rule, falls
					-- through to editor.foreground (dark_modern).
					set_many(p.editor_fg, {
						"Delimiter", "@punctuation.delimiter", "@punctuation.bracket",
					})

					-- Interpolation delimiters (${...} in template strings):
					-- punctuation.section.embedded (2026-dark).
					set_many(p.red, { "@punctuation.special" })

					-- Variables, fields, members, properties:
					-- variable.other (2026-dark, 2 segs) shadows variable (1 seg).
					set_many(p.gray, {
						"Identifier",
						"@variable", "@variable.member", "@field", "@property",
						"@variable.parameter", "@parameter",
						"@lsp.type.variable", "@lsp.type.parameter", "@lsp.type.property",
					})

					-- Builtin variables (self/this): variable.language (2026-dark).
					set_many(p.blue, {
						"@variable.builtin",
						"@lsp.typemod.variable.defaultLibrary",
					})

					-- Constants and enum members:
					-- variable.other.constant / variable.other.enummember (2026-dark).
					set_many(p.blue, {
						"Constant", "@constant",
						"@lsp.type.enumMember",
						"@lsp.typemod.variable.readonly",
					})

					-- Language constants (true/false/None/null): constant.language (dark_vs).
					set_many(p.vs_blue, {
						"Boolean", "@boolean", "@constant.builtin",
					})

					-- Numbers: constant.numeric (dark_vs, 2 segs).
					set_many(p.num_green, {
						"Number", "Float",
						"@number", "@number.float", "@float",
						"@lsp.type.number",
					})

					-- Strings: string (2026-dark).
					set_many(p.string_blue, {
						"String", "@string", "@lsp.type.string",
					})

					-- Regex strings: string.regexp (dark_vs, 2 segs).
					set_many(p.regex_red, { "@string.regex", "@string.regexp" })

					-- String escapes (\n, \t): constant.character.escape (dark_plus).
					set_many(p.escape_yellow, {
						"SpecialChar", "@string.escape", "@character.special",
					})

					-- String placeholders (%s, {0}): constant.other.placeholder (dark_plus).
					set_many(p.light_blue, { "@string.special", "@string.special.symbol" })

					-- Character literals: constant.character (dark_plus).
					set_many(p.vs_blue, { "Character", "@character" })

					-- Docstrings: treat like comments (plugin handles Comment itself).
					vim.api.nvim_set_hl(0, "@string.documentation", { fg = "#8b949e", italic = true })

					-- Preprocessor / macros (C #include, #define, etc.):
					-- meta.preprocessor (dark_vs).
					set_many(p.vs_blue, {
						"PreProc", "Define", "Macro", "PreCondit",
						"@preproc", "@define", "@function.macro", "@constant.macro",
						"@lsp.type.macro", "@keyword.directive",
					})

					-- Storage modifiers (public/static/private/const):
					-- storage.modifier (dark_vs).
					set_many(p.vs_blue, {
						"@type.qualifier", "@storageclass", "@keyword.modifier",
					})

					-- HTML/JSX tag names: entity.name.tag (2026-dark).
					set_many(p.green, { "Tag", "@tag", "@tag.builtin" })

					-- HTML attribute names: entity.other.attribute-name (dark_vs).
					set_many(p.light_blue, { "@tag.attribute" })

					-- Tag delimiters (< >): punctuation.definition.tag (dark_vs).
					set_many(p.tag_gray, { "@tag.delimiter" })

					-- Markdown
					vim.api.nvim_set_hl(0, "@markup.italic", { fg = p.magenta, italic = true })
					vim.api.nvim_set_hl(0, "@markup.strong", { fg = p.vs_blue, bold = true })
					for _, g in ipairs({
						"@markup.heading", "@markup.heading.1", "@markup.heading.2",
						"@markup.heading.3", "@markup.heading.4", "@markup.heading.5",
						"@markup.heading.6",
					}) do
						vim.api.nvim_set_hl(0, g, { fg = p.vs_blue, bold = true })
					end
					set_many(p.str_orange, { "@markup.raw", "@markup.raw.block" })
					set_many(p.quote_green, { "@markup.quote" })
					set_many(p.orange, { "@markup.list" })
					set_many(p.string_blue, {
						"@markup.link", "@markup.link.label", "@markup.link.url",
						"@text.uri",
					})

					-- Diff markers in inline diff text
					set_many(p.num_green, { "@diff.plus" })
					set_many(p.str_orange, { "@diff.minus" })
					set_many(p.vs_blue, { "@diff.delta" })

					-- Errors / invalid
					set_many(p.invalid, { "Error", "@error" })
				end,
			})
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "vscode-dark-2026",
		},
	},
}
