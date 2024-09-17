return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPre", "BufNewFile" },
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
			lua = { "luacheck" },
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
				-- This check is required because this autocmd will break in markdown files
				if vim.bo.filetype ~= "md" then
					return
				end
				lint.try_lint()
			end,
		})
	end,
}
