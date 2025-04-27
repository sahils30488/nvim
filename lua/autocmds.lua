-- Define a function to highlight the yanked area
local function highlight_yank()
	vim.highlight.on_yank({ higroup = "IncSearch", timeout = 200 })
end

-- Create an autocommand group
local yank_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })

-- Add the autocommand to the group
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = highlight_yank,
	group = yank_group,
	pattern = "*",
})
