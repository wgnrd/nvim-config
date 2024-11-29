return {
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/nvim-cmp" },
	"williamboman/mason.nvim",
	{ "williamboman/mason-lspconfig.nvim" },
	"neovim/nvim-lspconfig",

	config = function()
		local mason = require("mason")
		local lspconfig = require("lspconfig")
		require("mason-lspconfig").setup({
			handlers = {
				function(server_name)
					require("lspconfig")[server_name].setup({})
				end,
			},
		})

		mason.setup()

		lspconfig.tsserver.setup({
			on_attach = function(client)
				client.resolved_capabilities.document_formatting = false
			end,
		})
	end,
}

