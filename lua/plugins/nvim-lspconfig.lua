return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
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
}
