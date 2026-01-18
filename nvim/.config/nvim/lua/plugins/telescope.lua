return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    opts = {
      defaults = {
        file_ignore_patterns = {}
      }
    },
    config = function()
      local builtin = require('telescope.builtin')

      local find_files = function()
        return builtin.find_files({
          find_command = { "rg", "--files", "--color=never", "--hidden", "--follow", "--glob=!.git/*" }
        })
      end

      vim.keymap.set('n', '<leader>e', find_files, { desc = 'Telescope find files' })
      -- vim.keymap.set('n', '<C-p>', builtin.find_files)
      vim.keymap.set('n', '<leader>a', builtin.live_grep, { desc = 'Telescope live grep' })
      vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
    end
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      require("telescope").load_extension("ui-select")
    end
  }
}
