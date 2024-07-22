return {
	"nvim-treesitter/nvim-treesitter",
	version = "v0.9.2",
	dependencies = { "windwp/nvim-ts-autotag" },
	init = function()
		local nvim_treesitter_configs = require("nvim-treesitter.configs")

		nvim_treesitter_configs.setup({
			highlight = {
				enable = true,
			},
			indent = { enable = true },
			autotag = {
				enable = true,
			},
			ensure_installed = {
				"json",
				"yaml",
				"lua",
				"markdown",
				"python",
				"bash",
				"toml",
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
		})
	end,
}
