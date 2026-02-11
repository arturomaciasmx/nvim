return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      shopify_theme_ls = {
        -- Ensure blink capabilities are merged
        capabilities = require("blink.cmp").get_lsp_capabilities(),
      },
    },
  },
}
