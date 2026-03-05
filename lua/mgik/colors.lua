local set_hl = vim.api.nvim_set_hl

local function set_colors(highlight_groups)
	for _, highlight_group in pairs(highlight_groups) do
		if highlight_group == "BlinkCmpGhostText" then
			set_hl(0, "BlinkCmpGhostText", { blend = 90, fg = "#4d4d4d" })
		elseif highlight_group == "CursorLineNr" then
			set_hl(0, "CursorLineNr", { fg = "white" })
		elseif highlight_group == "BlinkCmpMenuSelection" then
			set_hl(0, "BlinkCmpMenuSelection", { bg = "#4d4d4d" })
		else
			set_hl(0, highlight_group, { blend = 100, bg = "none" })
		end
	end
end

local groups_to_highligt = {
	"BlinkCmpMenu",
	"BlinkCmpGhostText",
	"BlinkCmpMenuBorder",
	"BlinkCmpDoc",
	"BlinkCmpDocBorder",
	"BlinkCmpDocSeparator",
	"BlinkCmpSignatureHelp",
	"BlinkCmpSignatureHelpBorder",
	"BlinkCmpMenuSelection",
	"NormalFloat",
	"FloatBorder",
	"Float",
	"StatusLine",
	"CursorLineNr",
}

-- Set up colors
vim.api.nvim_create_autocmd({ "InsertEnter", "BufEnter", "BufNewFile" }, {
	pattern = "*",
	callback = function()
		set_colors(groups_to_highligt)
	end,
})

-- Setting up yank colorization
vim.api.nvim_create_autocmd({ "TextYankPost" }, {
	callback = function()
		vim.hl.on_yank()
	end,
})
