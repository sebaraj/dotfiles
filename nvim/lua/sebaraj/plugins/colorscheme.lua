return {
	"catppuccin/nvim",
	-- "rebelot/kanagawa.nvim",
	name = "catppuccin",
	-- name = "kanagawa",
	-- "navarasu/onedark.nvim",
	-- "folke/tokyonight.nvim",
	priority = 1000,
	config = function()
		-- require("kanagawa").setup({
		-- 	compile = false, -- enable compiling the colorscheme
		-- 	undercurl = true, -- enable undercurls
		-- 	commentStyle = { italic = true },
		-- 	functionStyle = {},
		-- 	keywordStyle = { italic = true },
		-- 	statementStyle = { bold = true },
		-- 	typeStyle = {},
		-- 	transparent = true, -- do not set background color
		-- 	dimInactive = false, -- dim inactive window `:h hl-NormalNC`
		-- 	terminalColors = true, -- define vim.g.terminal_color_{0,17}
		-- 	colors = { -- add/modify theme and palette colors
		-- 		palette = {},
		-- 		theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
		-- 	},
		-- 	overrides = function(colors) -- add/modify highlights
		-- 		return {}
		-- 	end,
		-- 	theme = "wave", -- Load "wave" theme
		-- 	background = { -- map the value of 'background' option to a theme
		-- 		dark = "wave", -- try "dragon" !
		-- 		light = "lotus",
		-- 	},
		-- })
		-- -- Lua
		-- require("onedark").setup({
		-- style = "darker",
		-- })
		-- require("onedark").load()
		-- local transparent = false
		-- require("catppuccin").setup({
		-- 	transparent_background = true,
		-- })

		-- local bg = "#011628"
		-- local bg_dark = "#011423"
		-- local bg_highlight = "#143652"
		-- local bg_search = "#0A64AC"
		-- local bg_visual = "#275378"
		-- local fg = "#CBE0F0"
		-- local fg_dark = "#B4D0E9"
		-- local fg_gutter = "#627E97"
		-- local border = "#547998"
		--
		-- require("tokyonight").setup({
		-- 	style = "night",
		-- 	transparent = transparent,
		-- 	styles = {
		-- 		sidebars = transparent and "transparent" or "dark",
		-- 		floats = transparent and "transparent" or "dark",
		-- 	},
		-- 	on_colors = function(colors)
		-- 		colors.bg = bg
		-- 		colors.bg_dark = transparent and colors.none or bg_dark
		-- 		colors.bg_float = transparent and colors.none or bg_dark
		-- 		colors.bg_highlight = bg_highlight
		-- 		colors.bg_popup = bg_dark
		-- 		colors.bg_search = bg_search
		-- 		colors.bg_sidebar = transparent and colors.none or bg_dark
		-- 		colors.bg_statusline = transparent and colors.none or bg_dark
		-- 		colors.bg_visual = bg_visual
		-- 		colors.border = border
		-- 		colors.fg = fg
		-- 		colors.fg_dark = fg_dark
		-- 		colors.fg_float = fg
		-- 		colors.fg_gutter = fg_gutter
		-- 		colors.fg_sidebar = fg_dark
		-- 	end,
		-- })
		-- vim.cmd.colorscheme("kanagawa")
		--
		-- vim.cmd("colorscheme tokyonight")
		vim.cmd.colorscheme("catppuccin-mocha")
	end,
}
