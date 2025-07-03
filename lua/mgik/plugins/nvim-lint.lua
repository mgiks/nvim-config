return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local lint = require("lint")
		lint.linters_by_ft = { go = { "golangcilint" }, py = { "ruff" } }

		local lint_augroup =
			vim.api.nvim_create_augroup("lint", { clear = true })

		local event_list = { "BufEnter", "BufWritePost", "InsertLeave" }

		vim.api.nvim_create_autocmd(event_list, {
			group = lint_augroup,
			callback = function()
				lint.try_lint()
			end,
		})

		vim.keymap.set("n", "<leader>ll", function()
			lint.try_lint()
		end)
	end,
}
