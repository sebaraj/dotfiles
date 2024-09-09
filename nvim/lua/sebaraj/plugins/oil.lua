return {
	{
		"stevearc/oil.nvim",
		lazy = false,
		dependencies = { { "nvim-tree/nvim-web-devicons", lazy = true } },
		config = function()
			local oil = require("oil")
			local util = require("oil.util")

			oil.setup({
				columns = { "icon" },
				lsp_file_methods = { timeout_ms = 1 },
				keymaps = {
					["<C-h>"] = false,
					["<C-l>"] = false,
					["<C-k>"] = false,
					["<C-j>"] = false,
					["<C-_>"] = "actions.select_vsplit",
					["<Esc>"] = "actions.close",
					-- ["nm"] = "actions.preview",
				},
				preview = { width = 0.7, update_on_cursor_moved = true },
				view_options = {
					show_hidden = true,
					previewwindow = true,
				},
			})

			-- Key mappings
			vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

			vim.keymap.set("n", "<space>-", function()
				oil.open()
				util.run_after_load(0, function()
					oil.open_preview()
				end)
				-- vim.defer_fn(function()
				-- 	if vim.api.nvim_buf_is_valid(0) then
				-- 		oil.open_preview()
				-- 	end
				-- end, 50)
				--oil.open_preview()
			end, { desc = "Toggle float and preview" })
		end,
	},
}
