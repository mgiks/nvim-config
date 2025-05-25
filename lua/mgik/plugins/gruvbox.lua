return {
	"sainnhe/gruvbox-material",
	lazy = true,
	config = function()
		vim.g.gruvbox_material_enable_italic = false
		vim.g.gruvbox_material_background = "hard"
		vim.g.gruvbox_material_foreground = "original"
		vim.g.gruvbox_material_disable_italic_comment = 1
		vim.g.gruvbox_material_transparent_background = 1
	end,
}
