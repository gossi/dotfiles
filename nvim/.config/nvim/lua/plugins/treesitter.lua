vim.pack.add({
	{
		src = "https://github.com/nvim-treesitter/nvim-treesitter",
		version = "main",
	},
	{
		src = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects",
		version = "main",
	},
})

require("nvim-treesitter").setup({})
require("nvim-treesitter").install({
	"css",
	"elixir",
	"glimmer",
	"glimmer_javascript",
	"glimmer_typescript",
	"html",
	"javascript",
	"json",
	"json5",
	"typescript",
	"yaml",
	"zsh",
	-- they are provided out of the box since nvim 0.12
	-- "lua",
	-- "markdown",
	-- "markdown_inline",
})

vim.api.nvim_create_autocmd("FileType", {
	callback = function()
		-- Enable treesitter highlighting and disable regex syntax
		pcall(vim.treesitter.start)
		-- Enable treesitter-based indentation
		vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
	end,
})
