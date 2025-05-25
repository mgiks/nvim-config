return {
	"williamboman/mason-lspconfig.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		handlers = {
			function(server_name)
				local lsp = require("lspconfig")
				local capabilities = require("blink.cmp").get_lsp_capabilities()

				lsp[server_name].setup({ capabilities = capabilities })
			end,
		},
	},
}
