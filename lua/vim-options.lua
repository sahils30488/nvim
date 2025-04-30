vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.clipboard = "unnamedplus"
vim.opt.number = true
vim.o.relativenumber = true
vim.opt.wrap = true
vim.o.linebreak = true -- Companion to wrap, don't split words (default: false)

vim.opt.ignorecase = true

vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.signcolumn = "yes"

-- Set cursor color for normal mode
vim.opt.backspace = "indent,eol,start"

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.cmdheight = 1
vim.opt.splitkeep = "cursor"

vim.opt.undofile = true
vim.opt.cursorline = true

vim.opt.mouse = "a"

vim.opt.showmode = false

-- vim.opt.breakindent = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = "yes"
vim.o.pumheight = 10 -- Pop up menu height (default: 0)

vim.wo.signcolumn = "yes" -- Keep signcolumn on by default (default: 'auto')
vim.o.fileencoding = "utf-8" -- The encoding written to a file (default: 'utf-8')

vim.o.breakindent = true -- Enable break indent (default: false)
vim.o.completeopt = "menuone,noselect" -- Set completeopt to have a better completion experience (default: 'menu,preview')
