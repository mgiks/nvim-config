local indentation_table_by_ft = {
	{
		file_types = { "*.go" },
		use_spaces = false,
		indentation_level = 4,
	},
	{
		file_types = { "*.tsx", "*.jsx", "*.js", "*.ts", "*.html", "*.css" },
		use_spaces = true,
		indentation_level = 2,
	},
	{
		file_types = { "*.c, *.cpp" },
		use_spaces = true,
		indentation_level = 4,
	},
	{
		file_types = { "*.tsv" },
		use_spaces = false,
		indentation_level = 4,
	},
}

local function indentByFt(indentation_table)
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

indentByFt(indentation_table_by_ft)
