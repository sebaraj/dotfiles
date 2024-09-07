return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	dependencies = {
		{ "nvim-tree/nvim-web-devicons" },
		"FortAwesome/Font-Awesome",
	},

	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	opts = {},
	config = function()
		local wk = require("which-key")
		wk.add({

			{ "<leader>s", group = "Search", icon = "\u{f0349}" },
			{ "<leader>c", group = "Code Action" },
			{ "<leader>h", group = "Gitsigns" },
			{ "<leader>j", group = "Harpoon", icon = "󱡅" },
			{ "<leader>m", group = "Conform" },
			{ "<leader>r", group = "Rename/Restart" },
			{ "<leader>t", group = "Tab" },
			{ "<leader>w", group = "Window" },
			{ "<leader>x", group = "Trouble" },
			{ "<leader>/", icon = "\u{f0349}" },
			{ "<leader> ", icon = "\u{f0349}" },
		})
	end,
}
