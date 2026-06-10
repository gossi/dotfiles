-- see: https://github.com/neovim/neovim/issues/20107
local opt = vim.opt

opt.relativenumber = true
opt.number = true
opt.timeoutlen = 0 -- No delay in lazygit or opencode when hitting space

-- Indentation
opt.tabstop = 2 -- Tab width (prettier default)
opt.shiftwidth = 2 -- Indent width
opt.softtabstop = 2 -- Soft tab stop
opt.expandtab = true -- Use spaces instead of tabs / Expand tab to spaces
opt.smartindent = true -- Smart auto-indenting
opt.autoindent = true -- Copy indent from current line when starting new one

-- Linebreaks
opt.wrap = false
opt.linebreak = true -- break only at word boundary
opt.breakindent = true -- indent wrapped lines
opt.breakindentopt = "shift:2"

-- Cursor
-- opt.cursorline = true

-- Search Settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- Clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- Folding
opt.foldcolumn = "1" -- '0' is not bad
opt.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
opt.foldlevelstart = 99
opt.foldenable = true

-- UI
require("vim._core.ui2").enable()

opt.winborder = "rounded"
opt.pumborder = "rounded"

-- File Types

-- markdown
vim.g.markdown_recommended_style = false
