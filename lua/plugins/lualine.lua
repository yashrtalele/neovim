return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "catppuccin",
				component_separators = { left = " | ", right = " | " },
				section_separators = { right = "", left = "" },
			},
			sections = {
				lualine_x = {},
				lualine_y = { "filetype" },
			},
		})
	end,
}
