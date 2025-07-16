-- LSP
vim.lsp.handlers["textDocument/hover"] =
	vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })
vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(event)
		local opts = { buffer = event.buf }

		vim.keymap.set("n", "K", function()
			vim.lsp.buf.hover()
		end, opts)
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
		vim.keymap.set("n", "go", vim.lsp.buf.type_definition, opts)
		vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
		vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, opts)
		vim.keymap.set({ "n", "x" }, "<F3>", function()
			vim.lsp.buf.format({ async = true })
		end, opts)
		vim.keymap.set("n", "<F4>", vim.lsp.buf.code_action, opts)
	end,
})

-- Hyprlang support
vim.filetype.add({
	pattern = {
		[".*/hypr,.*%conf"] = "hyprlang",
		[".env"] = "dotenv",
	},
})

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
	pattern = { "*.hl", "hypr*conf" },
	callback = function(_)
		vim.lsp.start({
			name = "hyprlang",
			cmd = { "hyprls" },
			root_dir = vim.fn.getcwd(),
		})
	end,
})

-- Indentation settings for different languages
local go_indentation_table = {
	file_types = { "*.go" },
	use_spaces = false,
	indentation_level = 4,
}
local js_and_such_indentation_table = {
	file_types = { "*.tsx", "*.jsx", "*.js", "*.ts", "*.html", "*.css" },
	use_spaces = true,
	indentation_level = 2,
}
local c_and_such = {
	file_types = { "*.c, *.cpp" },
	use_spaces = true,
	indentation_level = 4,
}
local tsv_indentation_table = {
	file_types = { "*.tsv" },
	use_spaces = false,
	indentation_level = 4,
}
local indentation_table_by_ft = {
	go_indentation_table,
	js_and_such_indentation_table,
	tsv_indentation_table,
	c_and_such,
}
IndentationByFt(indentation_table_by_ft)

-- Setting up transparent highlight groups
vim.api.nvim_create_autocmd({ "InsertEnter", "BufEnter", "BufNewFile" }, {
	pattern = "*",
	callback = function()
		Set_colors()
	end,
})

-- Setting up yank colorization
vim.api.nvim_create_autocmd({ "TextYankPost" }, {
	callback = function()
		vim.highlight.on_yank()
	end,
})
