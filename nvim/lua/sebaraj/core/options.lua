vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt
local keymap = vim.keymap

opt.pumheight = 15

opt.relativenumber = true
opt.number = true

opt.mouse = "a"
opt.showmode = false

opt.clipboard = "unnamedplus"

opt.undofile = true
opt.breakindent = true
opt.autoindent = true
opt.smartindent = true
opt.cindent = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.ignorecase = true
opt.smartcase = true

opt.wrap = false

opt.signcolumn = "yes"

opt.updatetime = 500
opt.timeoutlen = 500

opt.splitright = true
opt.splitbelow = true

opt.inccommand = "split"
opt.cursorline = true
opt.scrolloff = 7

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

opt.backspace = "indent,eol,start"

opt.whichwrap:append("<,>,h,l")
-- opt.whichwrap:append(">,l")

opt.hlsearch = true
