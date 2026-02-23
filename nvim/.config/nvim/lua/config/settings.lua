vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.expandtab = true  -- expand tab to spaces
opt.tabstop = 2       -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2    -- 2 spaces for indent width
opt.autoindent = true -- copy indent from current line when starting new one
opt.softtabstop = 2

opt.wrap = true
opt.linebreak = true   -- break only at word boundary
opt.breakindent = true -- indent wrapped lines
opt.breakindentopt = "shift:2"

vim.opt.autoindent = true
vim.opt.smartindent = true

-- cursor
-- opt.cursorline = true

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true  -- if you include mixed case in your search, assumes you want case-sensitive

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- markdown
vim.g.markdown_recommended_style = false

-- folding
vim.o.foldcolumn = '1'     -- '0' is not bad
vim.o.foldlevel = 99       -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true
