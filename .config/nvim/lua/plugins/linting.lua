return {
	"mfussenegger/nvim-lint",
	enabled = false,
	version = "nvim-05",
	keys = function()
		local lint = require("lint")

		return {
			{
				"<leader>ll",
				function()
					lint.try_lint()
				end,
				desc = "Trigger linting for current file",
			},
		}
	end,
	opts = {
		linters_by_ft = {
			json = { "jsonlint" },
			yaml = { "yamllint" },
			lua = { "luacheck" },
			py = { "flake8" },
			bash = { "shellcheck" },
			toml = { "eslint" },
		},
	},
	init = function()
		local lint = require("lint")

		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "TextChangedI", "InsertLeave" }, {
			group = vim.api.nvim_create_augroup("lint", { clear = true }),
			callback = function()
				lint.try_lint()
			end,
		})
	end,
	config = function() end,
}
