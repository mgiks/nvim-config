local detailed_view = false

return {
	"stevearc/oil.nvim",
	priority = 1000,
	opts = {
		watch_for_changes = true,
		skip_confirm_for_simple_edits = true,
		default_file_explorer = true,
		view_options = {
			show_hidden = true,
			is_always_hidden = function(name, _)
				if name == ".." or name == "." then
					return true
				end
			end,
		},
		keymaps = {
			["~"] = "<cmd>edit $HOME<CR>",
			["<C-h>"] = false,
			["<C-l>"] = false,
			["gd"] = function()
				local oil = require("oil")
				local set_columns = oil.set_columns

				if detailed_view then
					set_columns({ "icon" })
					detailed_view = false
				else
					set_columns({ "icon", "permissions", "size", "mtime" })
					detailed_view = true
				end
			end,
			["g."] = { "actions.toggle_hidden" },
		},
		use_default_keymaps = true,
	},
}
