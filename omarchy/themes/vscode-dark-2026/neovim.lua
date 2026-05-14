return {
	{
		"vscode-dark-2026",
		priority = 1000,
		opts = {},
		config = function(_, opts)
			require("vscode-dark-2026").setup(opts)
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "vscode-dark-2026",
		},
	},
}
