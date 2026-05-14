local M = {}

function M.get(c, _opts)
	return {
		-- LSP semantic tokens ---------------------------------------------
		-- Pylance, rust-analyzer, typescript-language-server etc. send
		-- semantic tokens by type (class, function, variable, ...) plus
		-- modifiers (readonly, defaultLibrary, ...). These take precedence
		-- over treesitter when both are active, so they must be set
		-- explicitly to match what VS Code resolves for the same TM scope.
		["@lsp.type.namespace"]      = { fg = c.type },
		["@lsp.type.type"]           = { fg = c.type },
		["@lsp.type.class"]          = { fg = c.type },
		["@lsp.type.enum"]           = { fg = c.type },
		["@lsp.type.interface"]      = { fg = c.type },
		["@lsp.type.struct"]         = { fg = c.type },
		["@lsp.type.typeParameter"]  = { fg = c.type },
		["@lsp.type.parameter"]      = { fg = c.variable },
		["@lsp.type.variable"]       = { fg = c.variable },
		["@lsp.type.property"]       = { fg = c.variable },
		["@lsp.type.enumMember"]     = { fg = c.constant },
		["@lsp.type.function"]       = { fg = c.func },
		["@lsp.type.method"]         = { fg = c.func },
		["@lsp.type.macro"]          = { fg = c.preproc },
		["@lsp.type.decorator"]      = { fg = c.func },
		["@lsp.type.keyword"]        = { fg = c.keyword },
		["@lsp.type.string"]         = { fg = c.string },
		["@lsp.type.number"]         = { fg = c.number },
		["@lsp.type.operator"]       = { fg = c.operator },
		["@lsp.type.comment"]        = { link = "Comment" },

		-- LSP semantic token modifiers ------------------------------------
		-- `defaultLibrary` is used for builtins (e.g. `print` in Python,
		-- `console` in TS); resolved per type via @lsp.typemod.
		["@lsp.typemod.function.defaultLibrary"] = { fg = c.func_builtin },
		["@lsp.typemod.method.defaultLibrary"]   = { fg = c.func_builtin },
		["@lsp.typemod.type.defaultLibrary"]     = { fg = c.type },
		["@lsp.typemod.class.defaultLibrary"]    = { fg = c.type },
		["@lsp.typemod.variable.defaultLibrary"] = { fg = c.variable_builtin },
		["@lsp.typemod.variable.readonly"]       = { fg = c.constant },
		["@lsp.typemod.variable.static"]         = { fg = c.constant },
		["@lsp.mod.readonly"]                    = { fg = c.constant },
		["@lsp.mod.defaultLibrary"]              = { fg = c.variable_builtin },
		["@lsp.mod.deprecated"]                  = { strikethrough = true },

		-- Diagnostics -----------------------------------------------------
		DiagnosticError                  = { fg = c.error },
		DiagnosticWarn                   = { fg = c.warn },
		DiagnosticInfo                   = { fg = c.info },
		DiagnosticHint                   = { fg = c.hint },
		DiagnosticOk                     = { fg = c.git_added },
		DiagnosticUnderlineError         = { sp = c.error, undercurl = true },
		DiagnosticUnderlineWarn          = { sp = c.warn, undercurl = true },
		DiagnosticUnderlineInfo          = { sp = c.info, undercurl = true },
		DiagnosticUnderlineHint          = { sp = c.hint, undercurl = true },
		DiagnosticVirtualTextError       = { fg = c.error, bg = "#3a1d1d" },
		DiagnosticVirtualTextWarn        = { fg = c.warn, bg = "#352a05" },
		DiagnosticVirtualTextInfo        = { fg = c.info, bg = "#1e3a47" },
		DiagnosticVirtualTextHint        = { fg = c.hint, bg = c.bg_line },
		DiagnosticDeprecated             = { strikethrough = true, sp = c.fg_mute },
		DiagnosticUnnecessary            = { fg = c.fg_mute },

		-- LSP references in the current buffer ----------------------------
		LspReferenceText                 = { bg = c.bg_select_dim },
		LspReferenceRead                 = { bg = c.bg_select_dim },
		LspReferenceWrite                = { bg = c.bg_match },
		LspSignatureActiveParameter      = { fg = c.markup_list, bold = true },
		LspInlayHint                     = { fg = c.fg_disabled, italic = true },
	}
end

return M
