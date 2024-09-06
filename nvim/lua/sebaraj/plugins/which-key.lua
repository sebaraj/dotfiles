return {
	"folke/which-key.nvim",
	dependencies = {
		"echasnovski/mini.icons",
		"echasnovski/mini.nvim",
		"nvim-tree/nvim-web-devicons",
		"devicons/devicon",
		"FortAwesome/Font-Awesome",
	},
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	opts = {},
	config = function()
		local wk = require("which-key")
		wk.add({
			{ "<leader>s", group = "Search" },
			{ "<leader>c", group = "Code Action" },
			{ "<leader>h", group = "Gitsigns" },
			{ "<leader>j", group = "Harpoon" },
			{ "<leader>m", group = "Conform" },
			{ "<leader>r", group = "Rename/Restart" },
			{ "<leader>t", group = "Tab" },
			{ "<leader>w", group = "Window" },
			{ "<leader>x", group = "Trouble" },
		})
	end,
}
