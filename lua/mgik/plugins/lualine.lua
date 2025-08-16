local theme = function()
	local colors = {
		white = "#c0c0c0",
		red = "#C10000",
		darkgray = "#16161d",
		gray = "#727169",
		transparent = " ",
		outerbg = "#16161D",
		normal = "#FF0000",
		insert = "#98bb6c",
		visual = "#ffa066",
		replace = "#e46876",
		command = "#e6c384",
	}

	local color_scheme = {
		c = { fg = colors.white, bg = colors.transparent },
		x = { fg = colors.white, bg = colors.transparent },
		y = { fg = colors.white, bg = colors.transparent },
		z = { fg = colors.white, bg = colors.red },
	}

	return {
		inactive = color_scheme,
		visual = color_scheme,
		replace = color_scheme,
		normal = color_scheme,
		insert = color_scheme,
		command = color_scheme,
	}
end

return {
	"nvim-lualine/lualine.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		options = {
			theme = theme(),
			disabled_filetypes = { "oil", "undotree", "telescope" },
			section_separators = { left = "┃", right = "┃" },
			component_separators = { left = "", right = "" },
		},
		sections = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = { "mode" },
			lualine_x = {
				{
					"filename",
					file_status = true,
					newfile_status = true,
					path = 0,
					symbols = {
						modified = "[]",
						readonly = " ",
						unnamed = "󱪘 ",
						newfile = "󱪞 ",
					},
				},
				"diff",
			},
			lualine_y = {
				{
					"diagnostics",
					separator = { left = "", right = "" },
				},
			},
			lualine_z = {},
		},
		globalstatus = true,
	},
}
