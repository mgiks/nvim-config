return {
	"linux-cultist/venv-selector.nvim",
	event = "VeryLazy", -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
	branch = "regexp",
	opts = {},
	keys = {
		-- Keymap to open VenvSelector to pick a venv.
		{ "<leader>vs", "<cmd>VenvSelect<cr>" },
		-- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
		{ "<leader>vc", "<cmd>VenvSelectCached<cr>" },
	},
}
