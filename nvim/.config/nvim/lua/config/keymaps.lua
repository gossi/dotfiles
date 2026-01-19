local map = vim.keymap.set

-- 
map({ "n", "v" }, "ä", "<cmd>q<cr>", { desc = "quit" })
map({ "n", "v" }, "ü", ":w<cr>", { desc = "save" })

-- navigation
-- map("n", "<leader>pv", vim.cmd.Ex)

map("n", "<M-left>", ":wincmd h<CR>", { silent = true })
map("n", "<M-up>", ":wincmd j<CR>", { silent = true })
map("n", "<M-down>", ":wincmd k<CR>", { silent = true })
map("n", "<M-right>", ":wincmd l<CR>", { silent = true })

-- misc
map("i", "tn", "<ESC>", { silent = true })

-- quit
map("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit All" })

-- better indenting
map("v", ">", ">gv", { desc = ">, keep selection when indenting" })
map("v", "<", "<gv", { desc = "<, keep selection when indenting" })
map("v", "=", "=gv", { desc = "=, keep selection when indenting" })

-- Toggle a specific character at the end of the current line
local function toggle_char_at_eol(target_char)
  local line_content = vim.api.nvim_get_current_line()

  if line_content:sub(-1) == target_char then
    -- Remove the character if it's at the end
    vim.api.nvim_set_current_line(line_content:sub(1, -2))
  else
    -- Add the character at the end
    vim.api.nvim_set_current_line(line_content .. target_char)
  end
end

map("n", "<leader>,", function()
  toggle_char_at_eol(",")
end, { desc = "toggle , at end of line" })
map("n", "<leader>;", function()
  toggle_char_at_eol(";")
end, { desc = "toggle ; at end of line" })

-- Move Lines
map("n", "<M-down>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
map("n", "<M-up>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
map("i", "<M-down>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
map("i", "<M-up>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
map("v", "<M-down>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
map("v", "<M-up>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

