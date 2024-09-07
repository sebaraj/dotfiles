-- highlight when yanking text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	callback = function()
		vim.opt_local.textwidth = 100
		vim.opt_local.formatoptions:append("t")
	end,
})

vim.api.nvim_create_autocmd("BufEnter", {
	pattern = "*",
	callback = function()
		-- Check if the current buffer is a floating window
		if vim.bo.buftype == "nofile" then
			local clients = vim.lsp.get_clients({ bufnr = 0 })
			for _, client in ipairs(clients) do
				vim.lsp.buf_detach_client(0, client.id)
			end
		end
	end,
})
