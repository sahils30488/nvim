return {
	"lewis6991/gitsigns.nvim",
	lazy = false, -- Load at startup
	dependencies = { "nvim-lua/plenary.nvim" }, -- Required dependency
	config = function()
		require("gitsigns").setup()
		vim.keymap.set("n", "gp", ":Gitsigns preview_hunk<CR>", { silent = true })
	end,
}
