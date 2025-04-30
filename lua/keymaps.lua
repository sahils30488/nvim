vim.g.mapleader = " "
local opts = { noremap = true, silent = true }
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
vim.keymap.set({ "n", "v" }, "s", "<Nop>", { silent = true })

vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = false })

vim.api.nvim_set_keymap("n", "0", "$", { noremap = false })
vim.api.nvim_set_keymap("n", "1", "^", { noremap = false })

-- remove highlights
vim.keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- buffers
vim.api.nvim_set_keymap("n", "<TAB>", ":bn<CR>", { noremap = false })
vim.api.nvim_set_keymap("n", "<S-TAB>", ":bp<CR>", { noremap = false })
vim.keymap.set("n", "<c-k>", ":wincmd k<cr>")
vim.keymap.set("n", "<c-j>", ":wincmd j<cr>")
vim.keymap.set("n", "<c-h>", ":wincmd h<cr>")
vim.keymap.set("n", "<c-l>", ":wincmd l<cr>")

vim.keymap.set("n", "<leader>q", function()
	local buf_count = #vim.fn.getbufinfo({ buflisted = 1 })

	if buf_count > 1 then
		vim.cmd("bdelete")
	else
		vim.cmd("q")
	end
end, { noremap = true, silent = true })

-- increment/decrement numbers
vim.keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
vim.keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- quit and write
vim.keymap.set("n", "<leader>w", ":wa<Return>", opts)
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

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)
