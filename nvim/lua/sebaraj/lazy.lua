local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({ { import = "sebaraj.plugins" }, { import = "sebaraj.plugins.lsp" } }, {
	checker = {
		enabled = false,
		notify = false,
		frequency = 604800,
	},
	change_detection = {
		enabled = false,
		notify = false,
	},
})
