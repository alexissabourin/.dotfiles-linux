local function lazy_status()
	return require("lazy.status")
end

return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "compat-nvim-0.6",
	config = true,
	options = {
		sections = {
			lualine_x = {
				lazy_status().updates,
				cond = lazy_status().has_updates,
			},
			{ "encoding" },
			{ "fileformat" },
			{ "filetype" },
		},
	},
}
