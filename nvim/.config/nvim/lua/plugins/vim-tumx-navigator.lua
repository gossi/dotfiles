return {
  "christoomey/vim-tmux-navigator",
  event = "VeryLazy",
  cmd = {
    "TmuxNavigateLeft",
    "TmuxNavigateDown",
    "TmuxNavigateUp",
    "TmuxNavigateRight",
    "TmuxNavigatePrevious"
  },
  keys = {
    { "<M-left>", "<cmd>TmuxNavigateLeft<cr>" },
    { "<M-down>", "<cmd>TmuxNavigateDown<cr>" },
    { "<M-up>", "<cmd>TmuxNavigateUp<cr>" },
    { "<M-right>", "<cmd>TmuxNavigateRight<cr>" }
  },
}

