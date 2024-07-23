return {
	"iamcco/markdown-preview.nvim",
	build = "cd app && npm install && rm -f package-lock.json && git restore .",
	ft = { "markdown" },
	keys = {
		{ "<leader>zz", "<cmd>MarkdownPreview<CR>", desc = "Preview markdown file" },
		{ "<leader>zt", "<cmd>MarkdownPreviewToggle<CR>", desc = "Toggle preview markdown file" },
		{ "<leader>zs", "<cmd>MarkdownPreviewStop<CR>", desc = "Stop preview markdown file" },
	},
}
