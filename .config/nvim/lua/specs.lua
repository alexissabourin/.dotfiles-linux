local opt = vim.opt
local diagnostic = vim.diagnostic
local api = vim.api
local cmd = vim.cmd
local fn = vim.fn
local g = vim.g
local keymap = vim.keymap
local o = vim.o

--[[
-- Cmds
--]]

cmd("let g:netrw_liststyle = 3")
cmd("let g:mkdp_echop_preview_url = 1")

--[[
-- Options
--]]

opt.relativenumber = true
opt.number = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.autoindent = true
opt.wrap = false
opt.ignorecase = true
opt.smartcase = true
opt.cursorline = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.backspace = "indent,eol,start"
opt.clipboard:append("unnamedplus")
opt.splitright = true
opt.splitbelow = true
opt.swapfile = false

o.timeout = true
o.timeoutlen = 500

--[[
-- Apis
--]]

api.nvim_create_autocmd("WinEnter", {
	callback = function()
		local floating = api.nvim_win_get_config(0).relative ~= ""

		diagnostic.config({
			virtual_text = floating,
			virtual_lines = not floating,
			update_in_insert = true,
		})
	end,
})

--[[
-- Functions
--]]

for type, icon in pairs({ Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }) do
	local hl = "DiagnosticSign" .. type

	fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

--[[
-- Globals
--]]

g.mapleader = " "
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
g.mkdp_filetypes = { "markdown" }

--[[
-- Keymaps
--]]

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })
