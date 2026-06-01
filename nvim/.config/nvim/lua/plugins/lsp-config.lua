return {
	{
		"mason-org/mason.nvim",
		opts = {
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = { "saghen/blink.cmp" },

		-- example using `opts` for defining servers
		opts = {
			servers = {
				elixirls = {},
				-- lua_ls = {}
			},
		},
		config = function(_, opts)
			for server, config in pairs(opts.servers) do
				-- passing config.capabilities to blink.cmp merges with the capabilities in your
				-- `opts[server].capabilities, if you've defined it
				config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
				vim.lsp.config(server, config)
			end
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			ensure_installed = {
				"lua_ls",
				"ts_ls",
				"cssls",
				"elixirls",
				"ember",
				"eslint_d",
				"prettier",
				"oxfmt",
				-- "glint",
				"gh_actions_ls",
				"html",
				"markdown_oxide",
				"stylua",
			},
		},
	},
	{
		"antosha417/nvim-lsp-file-operations",
		opts = {},
	},
	{
		"folke/lazydev.nvim",
		opts = {},
	},
}
