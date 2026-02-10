return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        shopify_theme_ls = {
          cmd = { "shopify", "theme", "language-server", "--stdio" },
          filetypes = { "liquid" },
        },
        cssls = {
          -- This forces the CSS LSP to initialize on liquid files
          filetypes = { "css", "scss", "less", "liquid" },
          settings = {
            css = { validate = true },
          },
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
