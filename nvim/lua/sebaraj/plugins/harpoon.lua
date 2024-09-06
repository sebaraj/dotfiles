return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	event = "VeryLazy",
	config = function()
		local harpoon = require("harpoon")
		-- local mark = require("harpoon.mark")
		-- local ui = require("harpoon.ui")
		harpoon:setup({})

		-- Keybindings to manage Harpoon marks and UI
		vim.keymap.set("n", "<leader>ja", function()
			harpoon:list():add()
		end, { desc = "Add file to Harpoon" })
		-- mark.add_file()
		-- end, { desc = "Add file to Harpoon" })
		vim.keymap.set("n", "<leader>jl", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "Toggle Harpoon quick menu" })

		-- Keybindings to select specific Harpoon marks
		vim.keymap.set("n", "<leader>j1", function()
			harpoon:list():select(1)
		end, { desc = "Navigate to Harpoon file 1" })
		vim.keymap.set("n", "<leader>j2", function()
			harpoon:list():select(2)
		end, { desc = "Navigate to Harpoon file 2" })
		vim.keymap.set("n", "<leader>j3", function()
			harpoon:list():select(3)
		end, { desc = "Navigate to Harpoon file 3" })
		vim.keymap.set("n", "<leader>j4", function()
			harpoon:list():select(4)
		end, { desc = "Navigate to Harpoon file 4" })

		-- Keybindings to toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<leader>jp", function()
			harpoon:list():prev()
		end, { desc = "Navigate to previous Harpoon file" })
		vim.keymap.set("n", "<leader>jn", function()
			harpoon:list():prev()
		end, { desc = "Navigate to next Harpoon file" })
	end,
}
