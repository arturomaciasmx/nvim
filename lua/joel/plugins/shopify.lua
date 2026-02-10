return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        shopify_theme_ls = {
          cmd = { "shopify", "theme", "language-server", "--stdio" },
          filetypes = { "liquid" },
          root_markers = { ".shopifyignore", ".theme-check.yml", ".theme-check.yaml", "shopify.theme.toml" }
        },
      },
    },
  },
}
