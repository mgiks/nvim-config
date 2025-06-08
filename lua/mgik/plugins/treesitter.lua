return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = "LspAttach",
	config = function()
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			ensure_installed = {
				"sql",
				"json",
				"jsonc",
				"javascript",
				"typescript",
				"tsx",
				"python",
				"go",
				"tsx",
				"yaml",
				"html",
				"css",
				"markdown",
				"markdown_inline",
				"bash",
				"lua",
				"vim",
				"dockerfile",
				"gitignore",
				"c",
				"cpp",
				"rust",
				"hyprlang",
				"bash",
			},
			incremental_selection = {
				enable = true,
			},
		})
	end,
}
