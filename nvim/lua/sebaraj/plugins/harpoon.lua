return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
	config = function()
		local harpoon = require("harpoon")
		local conf = require("telescope.config").values

		harpoon.setup()

		local function toggle_telescope(harpoon_files)
			local file_paths = {}
			for _, item in ipairs(harpoon_files) do
				table.insert(file_paths, item.filename)
			end

			require("telescope.pickers")
				.new({}, {
					prompt_title = "Harpoon",
					finder = require("telescope.finders").new_table({
						results = file_paths,
					}),
					previewer = conf.file_previewer({}),
					sorter = conf.generic_sorter({}),
				})
				:find()
		end

		vim.keymap.set("n", "<leader>q", function()
			harpoon.mark.add_file()
		end, { desc = "Harpoon Add File" })
		vim.keymap.set("n", "<C-z-y>", function()
			toggle_telescope(harpoon.get_mark_config().marks)
		end, { desc = "Open Harpoon with Telescope" })

		vim.keymap.set("n", "<C-z-u>", function()
			harpoon.ui.nav_file(1)
		end, { desc = "Harpoon Navigate to File 1" })
		vim.keymap.set("n", "<C-z-i>", function()
			harpoon.ui.nav_file(2)
		end, { desc = "Harpoon Navigate to File 2" })
		vim.keymap.set("n", "<C-z-o>", function()
			harpoon.ui.nav_file(3)
		end, { desc = "Harpoon Navigate to File 3" })
		vim.keymap.set("n", "<C-z-p>", function()
			harpoon.ui.nav_file(4)
		end, { desc = "Harpoon Navigate to File 4" })

		vim.keymap.set("n", "<C-S-P>", function()
			harpoon.ui.nav_prev()
		end, { desc = "Harpoon Navigate Previous" })
		vim.keymap.set("n", "<C-S-N>", function()
			harpoon.ui.nav_next()
		end, { desc = "Harpoon Navigate Next" })
	end,
}
