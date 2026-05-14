local M = {}

local config = require("vscode-dark-2026.config")

M.setup = config.setup

function M.load()
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
	vim.o.termguicolors = true
	vim.o.background = "dark"
	vim.g.colors_name = "vscode-dark-2026"

	require("vscode-dark-2026.theme").apply(config.options)
end

return M
