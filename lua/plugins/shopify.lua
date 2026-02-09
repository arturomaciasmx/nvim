return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        shopify_theme_ls = {
          cmd = { "shopify", "theme", "language-server", "--stdio" },
          filetypes = { "liquid" },
        },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        liquid = { "prettier" },
      },
    },
  },
}
