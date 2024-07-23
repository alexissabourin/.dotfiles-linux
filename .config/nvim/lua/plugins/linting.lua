return {
	"mfussenegger/nvim-lint",
	event = "VeryLazy",
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
			markdown = { "markdownlint", "vale" },
			py = { "flake8" },
			bash = { "shellcheck" },
			toml = { "eslint" },
		},
	},
	config = function()
		local lint = require("lint")

		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "TextChangedI", "InsertLeave" }, {
			group = vim.api.nvim_create_augroup("lint", { clear = true }),
			callback = function()
				lint.try_lint()
			end,
		})
	end,
}
