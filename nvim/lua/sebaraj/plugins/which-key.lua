return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	opts = {},
	config = function()
		local wk = require("which-key")
		wk.register({
			s = {
				name = "Search",
			},
			a = {
				name = "Autosession",
			},
			c = {
				name = "Code Action",
				a = { "<cmd>CodeActionMenu<cr>", "Code Action" },
			},
			h = {
				name = "Gitsigns",
				n = { "<cmd>Gitsigns next_hunk<cr>", "Next Hunk" },
				p = { "<cmd>Gitsigns prev_hunk<cr>", "Previous Hunk" },
			},
			m = {
				name = "Conform",
			},
			r = {
				name = "Rename/Restart",
				s = { "<cmd>LspRestart<cr>", "Restart LSP" },
			},
			t = {
				name = "Tab",
			},
			w = {
				name = "Window",
			},
			x = {
				name = "Trouble",
			},
		}, { prefix = "<leader>" })
	end,
}
