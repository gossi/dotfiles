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
		-- buffer-local: the plugin checks for these and skips its defaults (ht/hu/hT)
		vim.keymap.set(
			"n",
			"<localleader>ht",
			"<Plug>(MarkdownPlusOpenTocWindow)",
			{ buffer = true, nowait = true, desc = "Toggle TOC window" }
		)
		vim.keymap.set(
			"n",
			"<localleader>hu",
			"<Plug>(MarkdownPlusGenerateTOC)",
			{ buffer = true, desc = "Generate TOC" }
		)
		vim.keymap.set("n", "<localleader>hT", "<Nop>", { buffer = true, desc = "superseded by <localleader>ht" })

		require("markdown-plus").setup({
			toc = {
				initial_depth = 6,
			},
		})
	end,
})

vim.keymap.set("n", "<localleader>ht", "<Plug>(MarkdownPlusOpenTocWindow)")
vim.keymap.set("n", "<localleader>hu", "<Plug>(MarkdownPlusGenerateTOC)")
