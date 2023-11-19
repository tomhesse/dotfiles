-- Set options
local opt = vim.opt
local indent = 4

-- General
opt.mouse = "" -- Disable mouse support
opt.fileencoding = "utf-8" -- The encoding written to a file
opt.encoding = "utf-8" -- The encoding

-- Indentation
opt.autoindent = true -- Enable auto indentation
opt.expandtab = true -- Convert tabs to spaces
opt.smartindent = true -- Make indentation smarter
opt.tabstop = indent -- Number of spaces that a tab counts for
opt.softtabstop = indent -- Number of spaces a tab counts while editing
opt.shiftwidth = indent -- Number of spaces used for (auto)indent

-- Search
opt.hlsearch = true -- Highlight all matches
opt.ignorecase = true -- Ignore case in search patterns
opt.smartcase = true -- Overwrite ignorecase when pattern contains upper case
opt.incsearch = true -- Start searching while typing

-- UI
opt.syntax = "enable" -- Enable syntax highlighting
opt.cursorline = true -- Enable the cursor line
opt.scrolloff = 5 -- Always keep lines under the cursor
opt.colorcolumn = "120" -- Add the colorcolumn after 80 characters
-- opt.showmode = false -- Mode is shown in the statusline
opt.number = true -- Enable absolute line numbers
opt.relativenumber = true -- Enable relative line numbers
