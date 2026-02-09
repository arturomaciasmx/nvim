require("joel.core.options")
require("joel.core.keymaps")
require("joel.lazy")

-- Create a global LazyVim table if it doesn't exist
_G.LazyVim = _G.LazyVim or {}

-- Replicate the root detection logic
LazyVim.root = function()
  -- 1. Try to find the root using active LSP clients
  for _, client in pairs(vim.lsp.get_active_clients({ bufnr = 0 })) do
    local path = client.config.root_dir
    if path then return path end
  end

  -- 2. Fallback to common root markers (.git, etc.)
  local root = vim.fs.root(0, { ".git", "lua", "package.json" })
  
  -- 3. Final fallback to Current Working Directory
  return root or vim.uv.cwd()
end

