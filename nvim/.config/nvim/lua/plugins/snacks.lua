vim.pack.add({
	"https://github.com/folke/snacks.nvim",
})

require("snacks").setup({
	-- your configuration comes here
	-- or leave it empty to use the default settings
	-- refer to the configuration section below
	-- bigfile = { enabled = true },
	dashboard = {
		enabled = false,
		sections = {
			{ section = "header" },
			{ icon = " ", section = "keys", padding = 1, gap = 1 },
			{ icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
		},
	},
	-- explorer = { enabled = true },
	indent = { enabled = true },
	input = { enabled = true },
	picker = { enabled = true },
	--notifier = { enabled = true },
	quickfile = { enabled = true },
	--scope = { enabled = true },
	scroll = { enabled = true },
	--statuscolumn = { enabled = true },
	words = { enabled = true },
})

-- toggles
-- Snacks.toggle.option("spell", { name = "Spelling" }):map("<leader>us")
-- Snacks.toggle.option("wrap", { name = "Wrap" }):map("<leader>uw")
