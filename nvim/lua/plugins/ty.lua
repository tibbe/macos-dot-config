return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ty = {
          settings = {
            ty = {
              inlayHints = {
                variableTypes = false,
                callArgumentNames = false,
              },
            },
          },
        },
        ruff = {
          init_options = {
            settings = {
              logLevel = "error",
            },
          },
          keys = {
            {
              "<leader>co",
              LazyVim.lsp.action["source.organizeImports"],
              desc = "Organize Imports",
            },
          },
        },
      },
      setup = {
        ruff = function()
          Snacks.util.lsp.on({ name = "ruff" }, function(_, client)
            -- Keep hover/docs with ty and let ruff handle lint actions only.
            client.server_capabilities.hoverProvider = false
          end)
        end,
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      opts.formatters_by_ft.python = { "ruff_organize_imports", "ruff_fix", "ruff_format" }
    end,
  },
}
