vim.pack.add({
	"https://github.com/goolord/alpha-nvim",
})

local telescope = require("plugins.telescope")
local builtin = require("telescope.builtin")
local dashboard = require("alpha.themes.dashboard")
local theta = require("alpha.themes.theta")

local section_mru = {
	type = "group",
	val = {
		{
			type = "text",
			val = "Recent files",
			opts = {
				hl = "SpecialComment",
				shrink_margin = false,
				position = "center",
			},
		},
		{ type = "padding", val = 1 },
		{
			type = "group",
			val = function()
				return { theta.mru(1, vim.fn.getcwd()) }
			end,
			opts = { shrink_margin = false },
		},
	},
}

local buttons = {
	type = "group",
	val = {
		{ type = "text", val = "Quick links", opts = { hl = "SpecialComment", position = "center" } },
		{ type = "padding", val = 1 },
		dashboard.button("e", "  New file", "<cmd>ene<CR>"),
		dashboard.button("f", "󰈞  Find file", telescope.find_files),
		dashboard.button("a", "󰊄  Live grep", builtin.live_grep),
		-- dashboard.button("c", "  Configuration", "<cmd>exe 'cd' stdpath ('config')<CR>"),
		-- dashboard.button("u", "  Update plugins", "<cmd>Lazy sync<CR>"),
		dashboard.button("q", "󰅚  Quit", "<cmd>qa<CR>"),
	},
	position = "center",
}

theta.config.layout = {
	{ type = "padding", val = 2 },
	theta.header,
	{ type = "padding", val = 2 },
	section_mru,
	{ type = "padding", val = 2 },
	buttons,
}

require("alpha").setup(theta.config)
