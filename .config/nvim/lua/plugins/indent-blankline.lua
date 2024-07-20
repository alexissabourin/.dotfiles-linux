return {
	"lukas-reineke/indent-blankline.nvim",
	version = "v3.*",
	event = { "BufReadPre", "BufNewFile" },
	main = "ibl",
	opts = {
		indent = { char = "┊" },
	},
}
