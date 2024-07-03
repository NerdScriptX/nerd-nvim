vim.opt.textwidth = 85
vim.opt.wrapmargin = 1

-- Set relative line number
vim.opt.number = true
vim.opt.relativenumber = true

-- Set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Set tabs to 2 spaces
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

-- Enable auto indenting and set it to spaces
vim.opt.smartindent = true
vim.opt.shiftwidth = 2

-- Enable smart indenting (see https://stackoverflow.com/questions/1204149/smart-wrap-in-vim)
vim.opt.breakindent = true

-- Enable incremental searching
vim.opt.incsearch = true
vim.opt.hlsearch = true

-- Better splitting
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Enable ignorecase + smartcase for better searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Decrease updatetime to 250ms
vim.opt.updatetime = 250

-- Enable persistent undo history
vim.opt.undofile = true

-- Enable the sign column to prevent the screen from jumping
vim.opt.signcolumn = "yes"

-- Enable access to System Clipboard
vim.opt.clipboard = "unnamed,unnamedplus"

-- Enable cursor line highlight
vim.opt.cursorline = true

-- Always keep 8 lines above/below cursor unless at start/end of file
vim.opt.scrolloff = 8


vim.opt.termguicolors = true
vim.opt.backspace = "2"
vim.opt.showcmd = true
--vim.opt.autowrite = true
--vim.opt.autoread = true


