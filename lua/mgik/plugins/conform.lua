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
			clang_format = {
				append_args = {
					"-style=file:/home/mgik/.config/clang-format/clang-format",
				},
			},
		},
		formatters_by_ft = {
			go = { "gofmt" },
			lua = { "stylua" },
			javascript = { "deno_fmt" },
			jsonc = { "deno_fmt" },
			json = { "deno_fmt" },
			typescript = { "deno_fmt" },
			javascriptreact = { "deno_fmt" },
			typescriptreact = { "deno_fmt" },
			html = { "deno_fmt" },
			css = { "deno_fmt" },
			scss = { "deno_fmt" },
			sass = { "deno_fmt" },
			sh = { "shfmt" },
			tmux = { "shfmt" },
			sql = { "sleek" },
			-- c = { "clang_format" },
			python = { "ruff_organize_imports", "ruff_format" },
		},
		format_after_save = { async = true, lsp_format = "fallback" },
	},
}
