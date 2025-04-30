local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

-- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
-- 	signs = {
-- 		severity_limit = "Hint",
-- 	},
-- 	virtual_text = {
-- 		severity_limit = "Warning",
-- 	},
-- })

require("vim-options")
require("keymaps")
require("autocmds")
require("lazy").setup("plugins", {
	change_detection = {
		notify = false,
	},
})
