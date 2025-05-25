return {
	"mbbill/undotree",
	keys = {
		{ "<leader>u", "<cmd>UndotreeToggle<cr>" },
	},
	config = function()
		local global = vim.g
		global.undotree_WindowLayout = 2
		global.undotree_SetFocusWhenToggle = true
	end,
}
