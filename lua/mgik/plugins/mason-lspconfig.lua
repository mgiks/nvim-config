return {
	"williamboman/mason-lspconfig.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		automatic_enable = {
			exclude = {
				-- Needs external plugin.
				"jdtls",
				"sqruff",
			},
		},
	},
}
