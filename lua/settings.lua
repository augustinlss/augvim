-- [[ Basic Settings ]]

-- Set <space> as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Enable mouse support
vim.opt.mouse = "a"

-- Enable line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable cursor line
vim.opt.cursorline = true

-- Set tab width
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Enable auto indentation
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Enable line wrapping
vim.opt.wrap = false

-- Enable search highlighting
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Enable case insensitive search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Enable clipboard
vim.opt.clipboard = "unnamedplus"

-- Enable backup
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

-- Enable persistent undo
vim.opt.undofile = true

-- Set update time
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Enable split below and right
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Enable termguicolors
vim.opt.termguicolors = true

-- Set scrolloff
vim.opt.scrolloff = 8

-- Enable signcolumn
vim.opt.signcolumn = "yes"

-- Set completeopt
vim.opt.completeopt = { "menu", "menuone", "noselect" }

-- Enable nerd font
vim.g.have_nerd_font = true