return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-tree/nvim-web-devicons",
			opts = { default = true }, -- correct placement here
		},
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				window = {
					mappings = {
						["<BS>"] = "navigate_up",
						["."] = "set_root",
						["H"] = "toggle_hidden",
						["/"] = "fuzzy_finder",
					},
				},
			},
		})

		-- Toggle Neo-tree in float mode
		vim.keymap.set("n", "<C-p>", ":Neotree float toggle<CR>", { noremap = true, silent = true })
		vim.keymap.set("n", "<leader>b", ":Neotree float buffers<CR>", { noremap = true, silent = true })
	end,
}
