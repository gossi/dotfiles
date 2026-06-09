--
-- THIS IS EXPERIMENTAL
--

vim.pack.add({
	"https://github.com/nickjvandyke/opencode.nvim",
})

local opencode_cmd = "opencode --port"
---@type snacks.terminal.Opts
local snacks_terminal_opts = {
	win = {
		position = "right",
		enter = false,
	},
}

---@type opencode.Opts
vim.g.opencode_opts = {
	-- Your configuration, if any; goto definition on the type or field for details
	server = {
		start = function()
			require("snacks.terminal").open(opencode_cmd, snacks_terminal_opts)
		end,
	},
}

vim.o.autoread = true -- Required for `opts.events.reload`

vim.api.nvim_create_autocmd("User", {
	pattern = { "OpencodeEvent:tui.command.execute" },
	callback = function(args)
		---@type opencode.server.Event
		local event = args.data.event
		if event.properties.command == "prompt.submit" then
			local win = require("snacks.terminal").get(opencode_cmd, { create = false })
			if win then
				win:show()
			end
		end
	end,
})

-- Recommended/example keymaps
vim.keymap.set({ "n", "x" }, "<leader>oa", function()
	require("opencode").ask("@this: ", { submit = true })
end, { desc = "Ask opencode…" })

vim.keymap.set({ "n", "x" }, "<leader>op", function()
	require("opencode").select()
end, { desc = "Select opencode…" })

vim.keymap.set({ "n", "t" }, "<leader>oc", function()
	require("snacks.terminal").toggle(opencode_cmd, snacks_terminal_opts)
end, { desc = "Toggle opencode" })

-- vim.keymap.set({ "n", "x" }, "go", function()
-- 	return require("opencode").operator("@this ")
-- end, { desc = "Add range to opencode", expr = true })
-- vim.keymap.set("n", "goo", function()
-- 	return require("opencode").operator("@this ") .. "_"
-- end, { desc = "Add line to opencode", expr = true })

-- vim.keymap.set("n", "<S-C-u>", function()
-- 	require("opencode").command("session.half.page.up")
-- end, { desc = "Scroll opencode up" })
-- vim.keymap.set("n", "<S-C-d>", function()
-- 	require("opencode").command("session.half.page.down")
-- end, { desc = "Scroll opencode down" })

-- You may want these if you use the opinionated `<C-a>` and `<C-x>` keymaps above
-- vim.keymap.set("n", "+", "<C-a>", { desc = "Increment under cursor", noremap = true })
-- vim.keymap.set("n", "-", "<C-x>", { desc = "Decrement under cursor", noremap = true })
