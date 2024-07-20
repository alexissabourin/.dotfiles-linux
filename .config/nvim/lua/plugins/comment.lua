return {
	"numToStr/Comment.nvim",
	version = "v0.*",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		pre_hook = function()
			return vim.bo.commentstring
		end,
	},
	dependencies = {
		"JoosepAlviste/nvim-ts-context-commentstring",
	},
}
