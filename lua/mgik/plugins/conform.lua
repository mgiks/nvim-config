return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		log_level = vim.log.levels.DEBUG,
		formatters = {
			deno_fmt = {
				append_args = { "--single-quote=true", "--no-semicolons=true" },
			},
			stylua = {
				append_args = { "--column-width=80" },
			},
		},
		formatters_by_ft = {
			go = { "gofmt" },
			lua = { "stylua" },
			javascript = { "deno_fmt" },
			jsonc = { "deno_fmt" },
			typescript = { "deno_fmt" },
			javascriptreact = { "deno_fmt" },
			typescriptreact = { "deno_fmt" },
			html = { "deno_fmt" },
			css = { "deno_fmt" },
			sh = { "shfmt" },
			tmux = { "shfmt" },
		},
		format_on_save = { timeout_ms = 100, lsp_fallback = false },
	},
}
