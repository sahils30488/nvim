return {
	"numToStr/Comment.nvim",
	opts = {
		-- add any options here
	},
	lazy = false,
	config = function()
		vim.keymap.set("n", "<leader>/", function()
			return vim.v.count == 0 and "<Plug>(comment_toggle_linewise_current)"
				or "<Plug>(comment_toggle_linewise_count)"
		end, { expr = true })
		vim.keymap.set("x", "<leader>/", "<Plug>(comment_toggle_linewise_visual)")
	end,
}
