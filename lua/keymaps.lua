vim.g.mapleader = " "
local opts = { noremap = true, silent = true }
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
vim.keymap.set({ "n", "v" }, "s", "<Nop>", { silent = true })

vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = false })

vim.api.nvim_set_keymap("n", "0", "$", { noremap = false })
vim.api.nvim_set_keymap("n", "1", "^", { noremap = false })

-- buffers
vim.api.nvim_set_keymap("n", "<TAB>", ":bn<CR>", { noremap = false })
vim.api.nvim_set_keymap("n", "<S-TAB>", ":bp<CR>", { noremap = false })
vim.api.nvim_set_keymap("n", "<C-b>", ":bdelete<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<c-k>", ":wincmd k<cr>")
vim.keymap.set("n", "<c-j>", ":wincmd j<cr>")
vim.keymap.set("n", "<c-h>", ":wincmd h<cr>")
vim.keymap.set("n", "<c-l>", ":wincmd l<cr>")

-- quit and write
vim.keymap.set("n", "<leader>w", ":wa<Return>", opts)
vim.keymap.set("n", "<leader>q", ":q<Return>", opts)
vim.keymap.set("n", "<leader>1", ":q!<Return>", opts)
vim.keymap.set("n", "<leader>`", ":qa<Return>", opts)

vim.keymap.set("n", "sv", ":split<Return>", opts)
vim.keymap.set("n", "ss", ":vsplit<Return>", opts)
vim.keymap.set("n", "sq", ":close<Return>", opts)

-- Resize splits using arrow keys

vim.api.nvim_set_keymap("n", "<C-Down>", ":resize -2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Up>", ":resize +2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Right>", ":vertical resize -2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Left>", ":vertical resize +2<CR>", { noremap = true, silent = true })
