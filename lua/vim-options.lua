vim.cmd("let g:netrw_liststyle = 3")

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set smartindent")

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.clipboard = "unnamedplus"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = true

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
