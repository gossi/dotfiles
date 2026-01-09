-- navigation
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<M-left>", ":wincmd h<CR>", { silent = true })
vim.keymap.set("n", "<M-up>", ":wincmd j<CR>", { silent = true })
vim.keymap.set("n", "<M-down>", ":wincmd k<CR>", { silent = true })
vim.keymap.set("n", "<M-right>", ":wincmd l<CR>", { silent = true })

-- misc
vim.keymap.set("i", "tt", "<ESC>", { silent = true })
