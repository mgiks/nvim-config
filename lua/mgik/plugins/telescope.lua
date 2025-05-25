return {
	"nvim-telescope/telescope.nvim",
	lazy = true,
	tag = "0.1.8",
	cmd = {
		"Telescope",
	},
	keys = {
		{
			"<leader>fr",
			function()
				require("telescope.builtin").find_files({
					cwd = require("oil").get_current_dir(),
				})
			end,
		},
		{ "<leader>fu", "<cmd>Telescope find_files<cr>" },
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>" },
		{ "<leader>fb", "<cmd>Telescope buffers<cr>" },
		{ "<leader>fs", "<cmd>Telescope git_status<cr>" },
		{ "<leader>fc", "<cmd>Telescope git commits<cr>" },
	},
	opts = {},
}
