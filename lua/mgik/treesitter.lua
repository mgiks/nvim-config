vim.api.nvim_create_autocmd("FileType", {
	pattern = { "go", "javascript", "lua" },
	callback = function()
		vim.treesitter.start()
	end,
})
