return {
	"nvim-lualine/lualine.nvim",
	event = "VeryLazy",
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
	config = function()
		require("lualine").setup({
			options = {
				icons_enabled = true,
				theme = "auto",
				component_separators = { left = "", right = "" }, -- Rounded corner separators
				section_separators = { left = "", right = "" },
				-- component_separators = { left = "", right = "" },
				-- section_separators = { left = "", right = "" },
				disabled_filetypes = {
					statusline = {},
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				globalstatus = false,
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
				},
			},
			sections = {
				lualine_a = {
					{
						"mode",
						fmt = function(str)
							return str:sub(1, 1)
						end,
						separator = { left = "", right = "" },
					},
				},
				lualine_b = {
					{ "branch", separator = { right = "" } },
					{ "diff", separator = { left = "", right = "" } },
					"diagnostics",
				},
				lualine_c = { { "filename", path = 1, shorting_target = 70 } },
				lualine_x = {
					{ "encoding", separator = { right = "" } },
					{ "fileformat", separator = { right = "" } },
					"filetype",
				},
				lualine_y = { "progress" },
				lualine_z = { { "location", separator = { left = "", right = "" } } },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { { "filename", path = 1, shorting_target = 70 } },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
			-- sections = {
			-- 	lualine_a = { "mode" },
			-- 	lualine_b = {},
			-- 	lualine_c = { { "filename", path = 1, shorting_target = 70 } },
			-- 	lualine_x = { "branch", "diff", "diagnostics", "filetype" },
			-- 	lualine_y = { { "progress", color = { bg = "#292e42" } } },
			-- 	lualine_z = { "location" },
			-- },
			-- inactive_sections = {
			-- 	lualine_a = {},
			-- 	lualine_b = {},
			-- 	lualine_c = { "filename" },
			-- 	lualine_x = { "location" },
			-- 	lualine_y = {},
			-- 	lualine_z = {},
			-- },
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {},
		})
	end,
}
