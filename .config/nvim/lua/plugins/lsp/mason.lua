return {
	"williamboman/mason.nvim",
	dependencies = {
		{
			"williamboman/mason-lspconfig.nvim",
			init = function()
				-- mason-lspconfig.nvim needs to be setup before mason.nvim
				require("mason-lspconfig").setup()
			end,
			opts = {
				ensure_installed = {
					"jsonls",
					"yamlls",
					"lua_ls",
					"pyright",
					"bashls",
					"taplo",
					"eslint",
					"vale_ls",
				},
			},
		},
		{
			"WhoIsSethDaniel/mason-tool-installer.nvim",
			opts = {
				ensure_installed = {
					"prettier",
					"markdownlint",
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
					"vale",
				},
			},
		},
	},
	config = true,
}
