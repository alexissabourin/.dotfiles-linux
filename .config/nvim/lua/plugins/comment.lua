return {
	"numToStr/Comment.nvim",
	dependencies = {
		"JoosepAlviste/nvim-ts-context-commentstring",
	},
	version = "v0.8.0",
	opts = {
		pre_hook = function()
			return vim.bo.commentstring
		end,
	},
}
