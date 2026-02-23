return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			-- optional but recommended
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		},
		opts = {
			defaults = {
				file_ignore_patterns = {},
			},
		},
		config = function()
			local builtin = require("telescope.builtin")
			local actions = require("telescope.actions")

			local find_files = function()
				return builtin.find_files({
					find_command = {
						"rg",
						"--files",
						"--color=never",
						"--hidden",
						"--follow",
						"--glob=!.git/*",
						"--glob=!node_modules/",
					},
				})
			end

			vim.keymap.set("n", "<leader>ee", find_files, { desc = "Telescope find files" })
			vim.keymap.set("n", "<leader>ea", builtin.live_grep, { desc = "Telescope live grep" })
			vim.keymap.set("n", "<leader>eb", builtin.buffers, { desc = "Telescope buffers" })
			vim.keymap.set("n", "<leader>eh", builtin.help_tags, { desc = "Telescope help tags" })

			require("telescope").setup({
				defaults = {
					mappings = {
						i = {
							["<c-d>"] = actions.delete_buffer,
						},
						n = {
							["<c-d>"] = actions.delete_buffer,
						},
					},
				},
			})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").load_extension("ui-select")
		end,
	},
}
