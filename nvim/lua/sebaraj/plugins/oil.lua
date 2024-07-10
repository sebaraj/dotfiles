return {
	{
		"stevearc/oil.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local oil = require("oil")

			oil.setup({
				columns = { "icon" },
				keymaps = {
					["<C-h>"] = false,
					["<C-l>"] = false,
					["<C-k>"] = false,
					["<C-j>"] = false,
					["<C-_>"] = "actions.select_vsplit",
					["<Esc>"] = "actions.close",
				},
				view_options = {
					show_hidden = true,
					previewwindow = true,
				},
			})

			-- Key mappings
			vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

			vim.keymap.set("n", "<space>-", function()
				oil.toggle_float()
				vim.defer_fn(function()
					oil.open_preview()
				end, 50)
				--oil.open_preview()
			end, { desc = "Toggle float and preview" })
		end,
	},
}
