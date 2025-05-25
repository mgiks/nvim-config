return {
	"catgoose/nvim-colorizer.lua",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		filetypes = {
			oil = {
				names = false,
			},
			mason = {
				names = false,
			},
		},
	},
}
