local opts = { noremap = true, silent = true }

--: Shorten key mappings function names {{{
local keymap = function(mode, keys, cmd, options)
	options = options or {}
	options = vim.tbl_deep_extend("force", opts, options)
	vim.api.nvim_set_keymap(mode, keys, cmd, options)
end
local keyset = function(modes, keys, cmd, options)
	options = options or {}
	options = vim.tbl_deep_extend("force", opts, options)
	vim.keymap.set(modes, keys, cmd, options)
end
--: }}}

keymap("i", "jk", "<ESC>", { desc = "Exit insert mode" })
keymap("n", ";", ":", { desc = "CMD enter command mode" })
keyset("n", "<leader>e", ":Ex<CR>", { noremap = true, silent = true, desc = "Open file explorer (:Ex)" })
keymap("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "Window Left" })
keymap("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "Window Right" })
keymap("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "Window Down" })
keymap("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "Window Up" })
keyset("n", "<leader>q", "<cmd> Telescope diagnostics<CR>", { desc = "Diagnostics in Telescope view" })
keyset(
	"n",
	"<leader>r",
	'"_ciw',
	{ noremap = true, silent = true, desc = "Change the word under the cursor without yanking" }
)
