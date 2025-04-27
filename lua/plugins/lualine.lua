return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				icons_enabled = true,
				theme = "dracula",
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				disabled_filetypes = {
					statusline = {},
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				globalstatus = false,
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
				},
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = {
					{
						"buffers",
						show_filename_only = true, -- Shows shortened relative path when set to false.
						hide_filename_extension = false, -- Hide filename extension when set to true.
						show_modified_status = true, -- Shows indicator when the buffer is modified.

						mode = 0, -- 0: Shows buffer name
						-- 1: Shows buffer index
						-- 2: Shows buffer name + buffer index
						-- 3: Shows buffer number
						-- 4: Shows buffer name + buffer number

						max_length = vim.o.columns * 2 / 3, -- Maximum width of buffers component,
						-- it can also be a function that returns
						-- the value of `max_length` dynamically.

						-- Automatically updates active buffer color to match color of other components (will be overidden if buffers_color is set)
						use_mode_colors = true,

						buffers_color = {
							-- Same values as the general color option can be used here.
							active = "lualine_b_active", -- Color for active buffer.
							inactive = "lualine_b_inactive", -- Color for inactive buffer.
						},

						symbols = {
							modified = " ●", -- Text to show when the buffer is modified
							directory = "", -- Text to show when the buffer is a directory
						},
					},
				},
				lualine_c = {},
				lualine_x = { "filetype" },
				lualine_y = {},
				lualine_z = { "branch", "diff", "diagnostics" },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = {},
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {},
		})
	end,
}
