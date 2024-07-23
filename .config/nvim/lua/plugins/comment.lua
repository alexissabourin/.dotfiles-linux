return {
	"numToStr/Comment.nvim",
	dependencies = {
		"JoosepAlviste/nvim-ts-context-commentstring",
	},
	opts = {
		pre_hook = function()
			return vim.bo.commentstring
		end,
	},
}
