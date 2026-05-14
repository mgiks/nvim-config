vim.api.nvim_create_autocmd("FileType", {
	pattern = { "go", "javascript", "lua", "sql" },
	callback = function()
		vim.treesitter.start()
	end,
})
