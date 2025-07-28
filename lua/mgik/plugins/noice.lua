return {
	"folke/noice.nvim",
	event = "VeryLazy",
	cond = false,
	opts = {
		views = {
			popup = {
				scrollbar = false,
			},
		},
		lsp = {
			signature = {
				enabled = false,
				auto_open = {
					enabled = false,
					trigger = false,
					luasnip = false,
				},
			},
			hover = {
				border = {
					padding = { 0, 0 },
				},
			},
		},
		presets = {
			lsp_doc_border = true,
		},
	},
}
