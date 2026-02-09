return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    cmd = "Neotree",
    -- ADD THIS SECTION
    opts = {
      filesystem = {
        follow_current_file = { enabled = true },
        use_libuv_file_watcher = true,
      },
      default_component_configs = {
        icon = {
          folder_closed = "",
          folder_open = "",
          folder_empty = "",
          default = "*",
          highlight = "NeoTreeFileIcon"
        },
        git_status = {
          symbols = {
            unstaged = "○",
            staged = "●",
             untracked = ""
          },
        },
      },
    },
    keys = {
      {
        "<leader>fe",
        function()
          -- Ensure your custom LazyVim.root() function from earlier is defined!
          require("neo-tree.command").execute({ toggle = true, dir = LazyVim.root() })
        end,
        desc = "Explorer NeoTree (Root Dir)",
      },
    },
  }
}

