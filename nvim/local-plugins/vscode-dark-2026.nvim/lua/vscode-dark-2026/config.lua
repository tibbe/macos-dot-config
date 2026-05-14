local M = {}

M.defaults = {
	transparent = false,
	italic_comments = true,
	terminal_colors = true,
	-- Receives the resolved palette before highlights are built. Mutate or
	-- return a new table to override individual colors:
	--   on_colors = function(c) c.keyword = "#ff0000" end
	on_colors = function(_) end,
	-- Receives the final highlight table after all groups are built. Mutate
	-- or return a new table to override specific highlight groups:
	--   on_highlights = function(hl, c) hl.Comment = { fg = c.fg_mute } end
	on_highlights = function(_, _) end,
}

M.options = vim.deepcopy(M.defaults)

function M.setup(opts)
	M.options = vim.tbl_deep_extend("force", M.defaults, opts or {})
end

return M
