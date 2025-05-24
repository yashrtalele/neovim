return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = { "lua_ls", "ts_ls" },
		})

		local lspconfig = require("lspconfig")
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		-- local on_attach = function(_, bufnr)
		-- 	local opts = { noremap = true, silent = true, buffer = bufnr }
		-- 	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
		-- end
		--
		-- lspconfig.ts_ls.setup({ on_attach = on_attach })
		for _, server in ipairs({ "lua_ls", "ts_ls" }) do
			lspconfig[server].setup({
				capabilities = capabilities,
			})
		end
	end,
}
