return {
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			local telescope = require("telescope")
			local actions = require("telescope.actions")

			telescope.setup({
				defaults = {
					path_display = { "smart" },
					vimgrep_arguments = {
						"rg",
						"--color=never",
						"--no-heading",
						"--with-filename",
						"--line-number",
						"--column",
						"--smart-case",
						"--hidden", -- search hidden files
						"--glob=!**/node_modules/*",
						"--glob=!**/.venv/*",
						"--glob=!**/venv/*",
						"--glob=!**/ve/*",
						"--glob=!**/.ve/*",
						"--glob=!**/.git/*",
						"--glob=!**/__pycache__/*",
					},
					mappings = {
						i = {
							["<C-k>"] = actions.move_selection_previous, -- move to prev result
							["<C-j>"] = actions.move_selection_next, -- move to next result
							["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
						},
					},
				},
				pickers = {
					find_files = {
						find_command = {
							"rg",
							"--files",
							"--hidden",
							"--glob=!**/node_modules/*",
							"--glob=!**/.venv/*",
							"--glob=!**/venv/*",
							"--glob=!**/ve/*",
							"--glob=!**/.ve/*",
							"--glob=!**/__pycache__/*",
						},
					},
				},
			})

			telescope.load_extension("fzf")

			-- set keymaps
			local keymap = vim.keymap -- for conciseness

			keymap.set("n", "<leader>f", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
			keymap.set("n", "<leader>g", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
			keymap.set("n", "<leader>c", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
			keymap.set("n", "<leader>h", "<cmd>Telescope oldfiles<cr>", { desc = "Search old files" })
			keymap.set("n", "<leader>r", "<cmd>Telescope registers<cr>", { desc = "[ ] Find registers" })
			keymap.set("n", "<leader>i", "<cmd>Telescope git_status<cr>", { desc = "git status" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function() -- This is your opts table
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({
							-- even more opts
						}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
	{
		"AckslD/nvim-neoclip.lua",
		requires = {
			-- you'll need at least one of these
			-- {'nvim-telescope/telescope.nvim'},
			-- {'ibhagwan/fzf-lua'},
		},
		config = function()
			require("neoclip").setup()
			vim.api.nvim_set_keymap("n", "<leader>p", "<cmd>Telescope neoclip<cr>", { noremap = true, silent = true })
			require("telescope").load_extension("neoclip")
		end,
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
		config = function()
			local fb_actions = require("telescope._extensions.file_browser.actions")
			local actions = require("telescope.actions")
			-- You don't need to set any of these options.
			-- IMPORTANT!: this is only a showcase of how you can set default options!
			require("telescope").setup({
				extensions = {
					file_browser = {
						-- disables netrw and use telescope-file-browser in its place
						hijack_netrw = true,
						hidden = true,
						mappings = {
							["i"] = {
								-- your custom insert mode mappings
							},
							["n"] = {
								["a"] = fb_actions.create,
								["r"] = fb_actions.rename,
								["m"] = fb_actions.move,
								["y"] = fb_actions.copy,
								["d"] = fb_actions.remove,
								["o"] = fb_actions.open,
								["p"] = fb_actions.goto_parent_dir,
								["`"] = fb_actions.goto_home_dir,
								["c"] = fb_actions.goto_cwd,
								["cd"] = fb_actions.change_cwd,
								["f"] = fb_actions.toggle_browser,
								["h"] = fb_actions.toggle_hidden,
								["s"] = fb_actions.toggle_all,
								["<bs>"] = fb_actions.backspace,
								["/"] = function()
									vim.cmd("startinsert")
								end,
								["<PageUp>"] = actions.preview_scrolling_up,
								["<PageDown>"] = actions.preview_scrolling_down,
								-- your custom normal mode mappings
							},
						},
					},
				},
			})
			-- To get telescope-file-browser loaded and working with telescope,
			-- you need to call load_extension, somewhere after setup function:
			vim.keymap.set("n", "<leader>o", ":Telescope file_browser<CR>")

			require("telescope").load_extension("file_browser")
		end,
	},
}
