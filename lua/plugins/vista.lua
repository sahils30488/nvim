return {
	"liuchengxu/vista.vim",
	config = function()
		vim.g.vista_default_executive = "nvim_lsp"

		vim.g.vista_sidebar_width = 30
		vim.g.vista_echo_cursor = 1
		vim.keymap.set("n", "<leader>t", ":Vista!!<CR>", { silent = true, desc = "Tags" })
	end,
}
