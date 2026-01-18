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
    { "<F6>", "<cmd>TmuxNavigateLeft<cr>" },
    { "<F7>", "<cmd>TmuxNavigateDown<cr>" },
    { "<F8>", "<cmd>TmuxNavigateUp<cr>" },
    { "<F9>", "<cmd>TmuxNavigateRight<cr>" }
  },
}

