return {
	"github/copilot.vim",
	config = function()
		vim.g.copilot_filetypes = {
			["*"] = true, -- This enables Copilot for all filetypes
		}
	end,
}
