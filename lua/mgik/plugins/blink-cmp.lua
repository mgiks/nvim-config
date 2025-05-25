return {
	"saghen/blink.cmp",
	version = "*",
	event = { "LspAttach" },
	opts = {
		keymap = {
			preset = "default",
			["<C-space>"] = {},
			["<C-y>"] = { "show", "select_and_accept" },
		},
		appearance = {
			use_nvim_cmp_as_default = true,
			nerd_font_variant = "mono",
		},
		sources = { default = { "lsp", "path", "snippets", "buffer" } },
		completion = {
			list = { selection = { preselect = true, auto_insert = true } },
			ghost_text = { enabled = true },
			menu = {
				auto_show = true,
				border = "rounded",
				draw = { treesitter = { "lsp" } },
				scrollbar = false,
			},
			documentation = {
				auto_show = true,
				auto_show_delay_ms = 0,
				window = { border = "rounded", scrollbar = false },
			},
		},
		signature = {
			enabled = true,
			trigger = { enabled = true, show_on_insert = true },
			window = {
				border = "rounded",
				show_documentation = true,
				scrollbar = false,
			},
		},
	},
}
