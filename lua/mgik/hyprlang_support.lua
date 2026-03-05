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
