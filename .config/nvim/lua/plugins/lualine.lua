return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = true,
	opts = function()
		local lazy_status = require("lazy.status")

		return {
			options = {
				sections = {
					lualine_x = {
						lazy_status.updates,
						cond = lazy_status.has_updates,
					},
					{ "encoding" },
					{ "fileformat" },
					{ "filetype" },
				},
			},
		}
	end,
}
