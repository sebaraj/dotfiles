return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	event = "VeryLazy",
	config = function()
		local harpoon = require("harpoon")
		local mark = require("harpoon.mark")
		local ui = require("harpoon.ui")
		harpoon.setup({})

		-- Keybindings to manage Harpoon marks and UI
		vim.keymap.set("n", "<leader>ja", function()
			mark.add_file()
		end, { desc = "Add file to Harpoon" })
		vim.keymap.set("n", "<leader>jl", function()
			ui.toggle_quick_menu()
		end, { desc = "Toggle Harpoon quick menu" })

		-- Keybindings to select specific Harpoon marks
		vim.keymap.set("n", "<leader>j1", function()
			ui.nav_file(1)
		end, { desc = "Navigate to Harpoon file 1" })
		vim.keymap.set("n", "<leader>j2", function()
			ui.nav_file(2)
		end, { desc = "Navigate to Harpoon file 2" })
		vim.keymap.set("n", "<leader>j3", function()
			ui.nav_file(3)
		end, { desc = "Navigate to Harpoon file 3" })
		vim.keymap.set("n", "<leader>j4", function()
			ui.nav_file(4)
		end, { desc = "Navigate to Harpoon file 4" })

		-- Keybindings to toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<leader>jp", function()
			ui.nav_prev()
		end, { desc = "Navigate to previous Harpoon file" })
		vim.keymap.set("n", "<leader>jn", function()
			ui.nav_next()
		end, { desc = "Navigate to next Harpoon file" })
	end,
}
