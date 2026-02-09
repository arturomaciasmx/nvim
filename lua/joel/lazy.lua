
-- 1. Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- 2. Setup plugins
require("lazy").setup({
  spec = {
    -- LOAD THE ENGINE ONLY (provides the 'LazyVim' global variable)
    { 
      "LazyVim/LazyVim", 
      priority = 10000, 
      lazy = false, 
      config = true, 
      opts = {
defaults = {
          autocmds = true, -- Set to false if you want zero defaults
          keymaps = false,  -- THIS FIXES YOUR ERROR
          options = true,
        },
      } 
    },
    
    -- IMPORT YOUR STUFF (from lua/plugins/ folder)
    { import = "joel.plugins" },
  },
})
