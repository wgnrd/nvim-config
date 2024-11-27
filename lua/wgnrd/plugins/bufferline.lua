return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local bufferline = require("bufferline")

		bufferline.setup({
			options = {
				separator_style = "thin",
				diagnostics = "nvim_lsp",
				offsets = {
					{
						filetype = "Neotree",
						text = "File Explorer",
						text_align = "left",
						separator = true,
						highlight = "Directory",
					},
				},
				always_show_bufferline = false,
				show_buffer_close_icons = false,
			},
		})
	end,
}
