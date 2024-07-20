local function lint()
	return require("lint")
end

return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPre", "BufNewFile" },
	version = "nvim-05",
	keys = {
		{
			"<leader>ll",
			function()
				lint().try_lint()
			end,
			-- Here I did not put curly braces around the "desc" field because it would make it unrecognizable by which-key
			desc = "Trigger linting for current file",
		},
	},
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
		vim.diagnostic.config({ update_in_insert = true })

		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "TextChangedI", "InsertLeave" }, {
			group = vim.api.nvim_create_augroup("lint", { clear = true }),
			callback = function()
				lint().try_lint()
			end,
		})
	end,
	config = function() end,
}
