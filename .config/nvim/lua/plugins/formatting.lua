local format_spec = {
	lsp_fallback = true,
	async = false,
	timeout_ms = 1000,
}

return {
	"stevearc/conform.nvim",
	version = "v6.1.0",
	event = "VeryLazy",
	opts = {
		formatters_by_ft = {
			json = { "prettier" },
			yaml = { "prettier" },
			lua = { "stylua" },
			markdown = { "prettier" },
			python = { "isort", "black" },
			sh = { "shfmt" },
			toml = { "taplo" },
		},
		format_on_save = format_spec,
	},
	keys = function()
		local conform = require("conform")

		return {
			{
				"<leader>mp",
				function()
					conform.format(format_spec)
				end,
				desc = "Format file or range (in visual mode)",
				mode = { "n", "v" },
			},
		}
	end,
}
