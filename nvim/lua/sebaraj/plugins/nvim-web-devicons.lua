return {
	"nvim-tree/nvim-web-devicons",
	lazy = true,
	config = function()
		require("nvim-web-devicons").setup({
			override = {
				search = {
					icon = "󰍉",
					color = "#ffffff",
					name = "Search",
				},
			},
			-- Set default icons
			default = true,
		})
	end,
}
