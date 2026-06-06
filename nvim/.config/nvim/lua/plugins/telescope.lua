vim.pack.add({
	"https://github.com/nvim-lua/plenary.nvim",
	"https://github.com/nvim-telescope/telescope.nvim",
	-- "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
})

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

local telescope = require("telescope")

telescope.setup({
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

vim.api.nvim_create_autocmd("FileType", {
	pattern = "TelescopePrompt",
	callback = function()
		vim.opt_local.completeopt = "menuone" -- no popup for single matches
		vim.opt_local.complete = "" -- disable <C-n> completion sources
	end,
})

---@type { find_files: fun(): unknown }
return {
	find_files = find_files,
}
