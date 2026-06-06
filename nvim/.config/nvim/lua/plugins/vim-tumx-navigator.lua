vim.pack.add({
	"https://github.com/christoomey/vim-tmux-navigator",
})

vim.keymap.set("n", "<F6>", "<cmd>TmuxNavigateLeft<cr>")
vim.keymap.set("n", "<F7>", "<cmd>TmuxNavigateDown<cr>")
vim.keymap.set("n", "<F8>", "<cmd>TmuxNavigateUp<cr>")
vim.keymap.set("n", "<F9>", "<cmd>TmuxNavigateRight<cr>")

-- return {
--   "christoomey/vim-tmux-navigator",
--   event = "VeryLazy",
--   cmd = {
--     "TmuxNavigateLeft",
--     "TmuxNavigateDown",
--     "TmuxNavigateUp",
--     "TmuxNavigateRight",
--     "TmuxNavigatePrevious"
--   },
--   keys = {
--     { "<F6>", "<cmd>TmuxNavigateLeft<cr>" },
--     { "<F7>", "<cmd>TmuxNavigateDown<cr>" },
--     { "<F8>", "<cmd>TmuxNavigateUp<cr>" },
--     { "<F9>", "<cmd>TmuxNavigateRight<cr>" }
--   },
-- }
--
