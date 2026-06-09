vim.pack.add({
	"https://github.com/nvim-tree/nvim-web-devicons",
	"https://github.com/YousefHadder/markdown-plus.nvim",
	"https://github.com/MeanderingProgrammer/render-markdown.nvim",
})

require("render-markdown").setup({
	latex = { enabled = false },
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	callback = function()
		require("markdown-plus").setup({
			toc = {
				initial_depth = 6,
			},
		})
	end,
})

vim.keymap.set("n", "<localleader>ht", "<Plug>(MarkdownPlusOpenTocWindow)")
vim.keymap.set("n", "<locallader>hT", "<Plug>(MarkdownPlusGenerateTOC)")
