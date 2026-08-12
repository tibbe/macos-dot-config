return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        rust_analyzer = {
          mason = false,
          settings = {
            ["rust-analyzer"] = {
              inlayHints = {
                typeHints = { enable = false },
                parameterHints = { enable = false },
                chainingHints = { enable = false },
              },
            },
          },
        },
      },
    },
  },
}
