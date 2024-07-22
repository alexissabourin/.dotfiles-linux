return {
	"nvim-telescope/telescope.nvim",
	version = "0.1.8",
	dependencies = {
		{
			"nvim-lua/plenary.nvim",
			version = "v0.1.4",
		},
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		{
			"nvim-tree/nvim-web-devicons",
			version = "v0.100",
		},
	},
	keys = {
		{
			"<leader>ff",
			"<cmd>Telescope find_files<CR>",
			desc = "Fuzzy find files in cw",
		},
		{
			"<leader>fr",
			"<cmd>Telescope oldfiles<CR>",
			desc = "Fuzzy find recent files",
		},
		{
			"<leader>fs",
			"<cmd>Telescope live_grep<CR>",
			desc = "Find string in cwd",
		},
		{
			"<leader>fc",
			"<cmd>Telescope grep_string<CR>",
			desc = "Find string under cursor in cwd",
		},
		{
			"<leader>ft",
			"<cmd>TodoTelescope<CR>",
			desc = "Find todos",
		},
	},
	init = function()
		local telescope = require("telescope")

		telescope.load_extension("fzf")
	end,
	opts = function()
		local telescope_actions = require("telescope.actions")

		return {
			defaults = {
				path_display = { "smart" },
				mappings = {
					i = {
						["<C-k>"] = telescope_actions.move_selection_previous,
						["<C-j>"] = telescope_actions.move_selection_next,
						["<C-q>"] = telescope_actions.send_selected_to_qflist + telescope_actions.open_qflist,
					},
				},
			},
		}
	end,
}
