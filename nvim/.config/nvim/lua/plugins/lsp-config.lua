return {
  {
    "mason-org/mason.nvim",
    opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      }
    }
  },
  {
    "neovim/nvim-lspconfig",
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        "ts_ls",
        "cssls",
        "elixirls",
        "ember",
        "glint",
        "gh_actions_ls",
        "html",
        "markdown_oxide",
      },
    },
  },
  {
    "antosha417/nvim-lsp-file-operations",
    config = true
  },
  {
    "folke/lazydev.nvim",
    opts = {}
  },
}
