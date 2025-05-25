return {
	"m4xshen/smartcolumn.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		colorcolumn = "80",
		disabled_filetypes = {
			"",
			"oil",
			"help",
			"text",
			"markdown",
			"lazy",
			"mason",
			"snacks_dashboard",
			"noice",
			"harpoon",
		},
		custom_colorcolumn = {},
		scope = "file",
		editorconfig = true,
	},
}
