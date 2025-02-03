return {
	"williamboman/mason.nvim",
	event = "VeryLazy",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			ensure_installed = {
				"ts_ls",
				"terraformls",
				-- "tsconfig",
				-- "html",
				-- "cssls",
				"tailwindcss",
				"lua_ls",
				"pyright",
				-- "bashls",
				"clangd",
				"cmake",
				"dockerls",
				"gopls",
				"markdown_oxide",
				-- "nginx_language_server",
				-- "sqlls",
				"rust_analyzer",
				-- "jdtls",
				"jsonls",
				"asm_lsp",
				"texlab",
				"verible",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier",
				"stylua",
				"isort",
				"black",
				"clang-format",
				-- "google-java-format",
				"gofumpt",
				-- "golangci_lint_ls",
				"pylint",
				-- "eslint_d",
				-- "checkstyle",
			},
		})
	end,
}
