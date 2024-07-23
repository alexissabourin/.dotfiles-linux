return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{
			"antosha417/nvim-lsp-file-operations",
			config = true,
		},
		{
			"folke/neodev.nvim",
			config = true,
		},
	},
	keys = {
		{ "gR", "<cmd>Telescope lsp_references<CR>", desc = "Show LSP References" },
		{ "gD", vim.lsp.buf.declaration, desc = "Go to declaration" },
		{ "gd", "<cmd>Telescope lsp_definitions<CR>", desc = "Show LSP definitions" },
		{ "gi", "<cmd>Telescope lsp_implementations<CR>", desc = "Show LSP implementations" },
		{ "gt", "<cmd>Telescope lsp_type_definitions<CR>", desc = "Show LSP type definitions" },
		{ "<leader>ca", vim.lsp.buf.code_action, desc = "See available code actions", mode = { "n", "v" } },
		{ "<leader>rn", vim.lsp.buf.rename, desc = "Smart rename" },
		{ "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", desc = "Show buffer diagnostics" },
		{ "<leader>d", vim.diagnostic.open_float, desc = "Show line diagnostics" },
		{ "[d", vim.diagnostic.goto_prev, desc = "Go to previous diagnostic" },
		{ "]d", vim.diagnostic.goto_next, desc = "Go to next diagnostic" },
		{ "K", vim.lsp.buf.hover, desc = "Show documentation for what is under cursor" },
		{ "<leader>rs", "<cmd>LspRestart<CR>", desc = "Restart LSP" },
	},
	init = function()
		local mason_lspconfig = require("mason-lspconfig")
		local cmp_nvim_lsp = require("cmp_nvim_lsp")
		local default_capabilities = cmp_nvim_lsp.default_capabilities()
		local lspconfig = require("lspconfig")

		mason_lspconfig.setup_handlers({
			function(server_name)
				lspconfig[server_name].setup({
					capabilities = default_capabilities,
				})
			end,
			["lua_ls"] = function()
				lspconfig["lua_ls"].setup({
					capabilities = default_capabilities,
					settings = {
						Lua = {
							diagnostics = {
								globals = { "vim" },
								disable = {
									"missing-parameter",
									"missing-fields",
								},
							},
							completion = {
								callSnippet = "Replace",
							},
						},
					},
				})
			end,
		})
	end,
}
