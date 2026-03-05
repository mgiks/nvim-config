vim.lsp.handlers["textDocument/hover"] =
	vim.lsp.buf.hover({ border = "rounded" })

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(event)
		local opts = { buffer = event.buf }
		vim.keymap.set("n", "K", function()
			vim.lsp.buf.hover()
		end, opts)
		vim.keymap.set(
			"n",
			"gd",
			require("telescope.builtin").lsp_definitions,
			opts
		)
		vim.keymap.set(
			"n",
			"gr",
			require("telescope.builtin").lsp_references,
			opts
		)
		vim.keymap.set(
			"n",
			"gi",
			require("telescope.builtin").lsp_implementations,
			opts
		)
		vim.keymap.set(
			"n",
			"gD",
			require("telescope.builtin").lsp_type_definitions,
			opts
		)
	end,
})
