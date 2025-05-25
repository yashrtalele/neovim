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
keyset("n", "<leader>e", ":Ex<CR>", { noremap = true, silent = true, desc = "Open file explorer (:Ex)" })
