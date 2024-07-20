return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		mason.setup()

		mason_lspconfig.setup({
			ensure_installed = {
				"bashls",
				"lua_ls",
				"marksman",
				"pyright",
				"yamlls",
			},
		})
		mason_tool_installer.setup({
			ensure_installed = {
				"prettier",
				"stylua",
				"isort",
				"black",
				"shfmt",
				"taplo",
				"jsonlint",
				"yamllint",
				"luacheck",
				"flake8",
				"shellcheck",
				"eslint",
			},
		})
	end,
}
