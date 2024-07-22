return {
	"folke/trouble.nvim",
	dependencies = {
		{
			"nvim-tree/nvim-web-devicons",
			version = "v0.100",
		},
	},
	version = "v3.6.0",
	opts = {
		focus = true,
	},
	keys = {
		{ "<leader>xw", "<cmd>Trouble diagnostics toggle<CR>", desc = "Open trouble workspace diagnostics" },
		{
			"<leader>xd",
			"<cmd>Trouble diagnostics toggle filter.buf=0<CR>",
			desc = "Open trouble document diagnostics",
		},
		{ "<leader>xq", "<cmd>Trouble quickfix toggle<CR>", desc = "Open trouble quickfix list" },
		{ "<leader>xl", "<cmd>Trouble loclist toggle<CR>", desc = "Open trouble location list" },
	},
}
