return {
	{
		"nvim-treesitter/nvim-treesitter",
		-- lazy = false,
		build = ":TSUpdate",
		---@class lazyvim.TSConfig: TSConfig
		opts = {
			-- indent = { enable = true }, ---@type lazyvim.TSFeat
			-- highlight = { enable = true }, ---@type lazyvim.TSFeat
			-- folds = { enable = true }, ---@type lazyvim.TSFeat
			ensure_installed = {
				"css",
				"elixir",
				-- "glimmer",
				-- "glimmer_javascript",
				-- "glimmer_typescript",
				-- "html",
				-- "javascript",
				-- "json",
				-- "json5",
				-- "lua",
				-- "markdown",
				-- "markdown_inline",
				-- "typescript",
				-- "yaml",
				"zsh",
			},
		},
		-- config = function(_, opts)
		-- 	-- import nvim-treesitter plugin
		-- 	local treesitter = require("nvim-treesitter")
		--
		-- 	-- configure treesitter
		-- 	treesitter.setup(opts)
		-- end,
	},
}
