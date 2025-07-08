return {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	opts = {
		fast_wrap = {},
		check_ts = true,
		enable_check_bracket_line = false,
		ignored_next_char = "[%w%.]",
		disable_filetype = { "c", "cpp" },
	},
}
