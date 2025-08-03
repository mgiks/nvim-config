return {
	"folke/snacks.nvim",
	priority = 999,
	lazy = false,
	opts = {
		dashboard = { enabled = true },
		indent = {
			priority = 1,
			enabled = true,
			char = "|",
			animate = { enabled = false, duration = { step = 5, total = 200 } },
			scope = { enabled = true, char = "|" },
		},
		notifier = { enabled = true },
		statuscolumn = {
			left = { "mark", "sign" },
			right = { "fold", "git" },
			folds = { open = true, git_hl = true },
			git = { patterns = { "GitSign" } },
			refresh = 50,
		},
		quickfile = {},
	},
}
