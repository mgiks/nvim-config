function LinterCheck()
	local linters = require("lint").get_running()
	if #linters == 0 then
		print("No linters running 󰦕 ")
		return
	end
	print("󱉶 " .. table.concat(linters, ", "))
end

function IndentationByFt(indentation_table)
	vim.api.nvim_create_augroup("AutoIndent", { clear = true })

	for _, language_indentation_table in ipairs(indentation_table) do
		vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
			group = "AutoIndent",
			pattern = language_indentation_table.file_types,
			callback = function()
				vim.bo.expandtab = language_indentation_table.use_spaces
				vim.bo.shiftwidth = language_indentation_table.indentation_level
				vim.bo.tabstop = language_indentation_table.indentation_level
				vim.bo.softtabstop =
					language_indentation_table.indentation_level
			end,
		})
	end
end
