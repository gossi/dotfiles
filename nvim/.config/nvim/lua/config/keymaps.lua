-- inspiration:
-- https://btj93.github.io/nvim-keymap-essentials
-- https://github.com/fdietze/dotfiles/blob/master/.config/nvim/lua/config/keymaps.lua

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

-- folding
ufo = require('ufo')
map('n', 'zR', ufo.openAllFolds)
map('n', 'zM', ufo.closeAllFolds)


-- Move Lines
map("n", "<M-down>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
map("n", "<M-up>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
map("i", "<M-down>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
map("i", "<M-up>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
map("v", "<M-down>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
map("v", "<M-up>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

-- highlighting
map("n", "h", "<cmd>let @/ = expand('<cword>')<cr>:set hls<cr>", { desc = "highlight word under cursor" }) -- todo: toggle
map("n", "<leader>/", "<cmd>nohls<cr>", { desc = "clear search highlight" })

-- search
map("n", "<leader>r", [[:%s/\<<C-r><C-w>\>//g<Left><Left>]], { desc = "Search and replace word under cursor" })

-- commenting
local function duplicate_and_comment()
  -- Exit visual mode
  local esc = vim.api.nvim_replace_termcodes("<Esc>", true, false, true)
  vim.api.nvim_feedkeys(esc, "x", false)

  -- Get selection range
  local start_line = vim.fn.line("'<")
  local end_line = vim.fn.line("'>")

  -- Yank and paste below
  vim.cmd(start_line .. "," .. end_line .. "yank")
  vim.cmd((end_line + 1) .. "put")

  -- Reselect pasted block
  vim.api.nvim_feedkeys("gv", "n", false)

  -- Comment the original selection
  vim.api.nvim_feedkeys("gc", "v", false)
end

vim.keymap.set("v", "yc", duplicate_and_comment, { noremap = true, desc = "Duplicate selection and comment original" })

-- toggles
Snacks.toggle.option("spell", { name = "Spelling" }):map("<leader>us")
Snacks.toggle.option("wrap", { name = "Wrap" }):map("<leader>uw")
