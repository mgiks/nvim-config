local set_hl = vim.api.nvim_set_hl

local function set_transparent(highlight_groups)
	for _, highlight_group in pairs(highlight_groups) do
		set_hl(0, highlight_group, { blend = 100, bg = "none" })
	end
end

local function set_ghost_text_color()
	set_hl(0, "BlinkCmpGhostText", { blend = 90, fg = "#4d4d4d" })
end

local function set_current_line_number_color()
	set_hl(0, "CursorLineNr", { fg = "white" })
end

local highlight_groups_to_transparent = {
	"BlinkCmpMenu",
	"BlinkCmpMenuBorder",
	"BlinkCmpDoc",
	"BlinkCmpDocBorder",
	"BlinkCmpDocSeparator",
	"BlinkCmpSignatureHelp",
	"BlinkCmpSignatureHelpBorder",
	"NormalFloat",
	"FloatBorder",
	"Float",
	"StatusLine",
}

function Set_colors()
	set_transparent(highlight_groups_to_transparent)
	set_ghost_text_color()
	set_current_line_number_color()
	set_hl(0, "BlinkCmpMenuSelection", { bg = "#4d4d4d" })
end
