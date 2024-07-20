local function nvim_tree_preview()
	return require("nvim-tree-preview")
end

return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"b0o/nvim-tree-preview.lua",
	},
	keys = {
		{ "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" } },
		{ "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" } },
		{ "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" } },
		{ "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" } },
		{
			"<leader><TAB>",
			function()
				nvim_tree_preview().node_under_cursor()
			end,
			{ desc = "Toggle file explorer" },
		},
	},
	init = function()
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1
	end,
	opts = {
		view = {
			width = 35,
			relativenumber = true,
		},
		renderer = {
			indent_markers = {
				enable = true,
			},
			icons = {
				glyphs = {
					folder = {
						arrow_closed = "",
						arrow_open = "",
					},
				},
			},
		},
		actions = {
			open_file = {
				window_picker = {
					enable = false,
				},
			},
		},
		git = {
			enable = true,
		},
	},
}
