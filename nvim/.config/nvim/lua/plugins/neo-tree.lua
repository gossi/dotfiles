return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false,                    -- neo-tree will lazily load itself
    keys = {
      { "<C-n>", ":Neotree toggle<CR>", { silent = true, desc = "Open Directory Tree" } }
    },
    ---@module 'neo-tree'
    ---@type neotree.Config
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
          hide_gitignored = false,
          hide_dotfiles = false,
          hide_ignored = false,
          ignore_files = {
            ".rgignore"
          },
          never_show = { ".git" },
          hide_by_name = { "node_modules" },
          follow_current_file = { enabled = true }
        },
      },
    },
    -- config = function()
    --   vim.keymap.set("n", "<C-n>", ":Neotree toggle<CR>", { silent = true, desc = "Open Directory Tree" })
    -- end
  }
}
