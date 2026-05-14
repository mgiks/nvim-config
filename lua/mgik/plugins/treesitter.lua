return {
	"mgiks/nvim-treesitter",
	build = ":TSUpdate",
	lazy = false,
	branch = "main",
	config = function()
		require("nvim-treesitter").install({ "go", "javascript", "lua", "sql" })
	end,
}
