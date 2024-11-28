return {
	"hrsh7th/nvim-cmp",
	event = "VeryLazy",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{
			"github/copilot.vim",
			config = function()
				vim.g.copilot_no_tab_map = true
				vim.g.copilot_assume_mapped = true
				vim.api.nvim_set_keymap("i", "<C-c>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
			end,
		},
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		{
			"L3MON4D3/LuaSnip",
			version = "v2.*",
			build = "make install_jsregexp",
		},
		"saadparwaiz1/cmp_luasnip",
		"rafamadriz/friendly-snippets",
		"onsails/lspkind.nvim",
	},
	-- format = function(_, vim_item)
	-- vim_item.menu = ""
	-- vim_item.kind = ""
	-- return vim_item
	-- end,
	config = function()
		local cmp = require("cmp")
		local luasnip = require("luasnip")
		local lspkind = require("lspkind")
		local ELLIPSIS_CHAR = "…"
		local MAX_LABEL_WIDTH = 20
		local MIN_LABEL_WIDTH = 20

		require("luasnip.loaders.from_vscode").lazy_load()

		cmp.setup({
			completion = {
				completeopt = "menu,menuone,preview,noselect",
			},
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["<C-k>"] = cmp.mapping.select_prev_item(),
				["<C-j>"] = cmp.mapping.select_next_item(),
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.abort(),
				["<CR>"] = cmp.mapping.confirm({ select = false }),
			}),
			window = {
				completion = cmp.config.window.bordered({}),
				-- documentation = cmp.config.window.bordered({}),
			},
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
				{ name = "buffer" },
				{ name = "path" },
			}),
			-- formatting = {
			-- 	format = function(entry, vim_item)
			-- 		local label = vim_item.abbr
			-- 		local truncated_label = vim.fn.strcharpart(label, 0, MAX_LABEL_WIDTH)
			-- 		if truncated_label ~= label then
			-- 			vim_item.abbr = truncated_label .. ELLIPSIS_CHAR
			-- 		elseif string.len(label) < MIN_LABEL_WIDTH then
			-- 			local padding = string.rep(" ", MIN_LABEL_WIDTH - string.len(label))
			-- 			vim_item.abbr = label .. padding
			-- 		end
			-- 		return vim_item
			-- 	end,
			-- },
			--
			-- formatting = {
			-- 	format = function(entry, vim_item)
			-- 		vim_item.abbr = string.sub(vim_item.abbr, 1, 20)
			-- 		return vim_item
			-- 	end,
			-- },
			--
			formatting = {
				expandable_indicator = false,
				fields = { "abbr", "kind", "menu" },
				format = function(_, vim_item)
					vim_item.menu = ""
					-- vim_item.kind = ""
					return vim_item
				end,
			},

			-- formatting = {
			-- 	format = lspkind.cmp_format({
			-- 		maxwidth = 50,
			-- 		ellipsis_char = "...",
			-- 	}),
			-- },
		})
		vim.g.copilot_no_tab_map = true
		vim.api.nvim_set_keymap("i", "<C-c>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
	end,
}
