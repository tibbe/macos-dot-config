return {
  {
    "saghen/blink.cmp",
    -- Use the function form so we replace the sources list instead of having
    -- LazyVim concatenate ours onto its defaults (which keeps "buffer" around).
    opts = function(_, opts)
      opts.sources = opts.sources or {}
      opts.sources.default = { "lsp" }
    end,
  },
}
