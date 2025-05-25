return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	opts = {
		transparent = true,
		transparent_background = true,
	},
	config = function()
		vim.cmd.colorscheme("catppuccin")
		require("catppuccin").setup({
			flavour = "auto",
			background = {
				light = "latte",
				dark = "mocha",
			},
			transparent_background = true,
			integrations = {
				cmp = true,
				gitsigns = true,
				nvimtree = true,
				treesitter = true,
				notify = true,
				telescope = {
					enabled = true,
					style = "nvchad",
				},
				mini = {
					enabled = true,
					indentscope_color = "",
				},
			},
		})
	end,
}
