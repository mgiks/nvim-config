vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ex", "<CMD>Oil<CR>")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { silent = true })
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "u", function()
	vim.cmd("normal! u")
	vim.cmd("delm a-z")
end, { silent = true })
vim.keymap.set("n", "J", function()
	vim.cmd("normal! mzJ`z")
	vim.cmd("delm z")
end, { silent = true })
vim.keymap.set("x", "<leader>p", '"_dP')
vim.keymap.set("n", "<M-h>", "<CMD>set hlsearch!<CR>")
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>bn", "<CMD>bnext<CR>")
vim.keymap.set("n", "<leader>bp", "<CMD>bprev<CR>")
vim.keymap.set("n", "<leader>bc", "<CMD>bprev<CR>")
vim.keymap.set({ "n", "i", "s" }, "<c-f>", function()
	if not require("noice.lsp").scroll(4) then
		return "<c-f>"
	end
end, { silent = true, expr = true })

vim.keymap.set({ "n", "i", "s" }, "<c-b>", function()
	if not require("noice.lsp").scroll(-4) then
		return "<c-b>"
	end
end, { silent = true, expr = true })

vim.keymap.set("n", "<leader>r", function()
	local cmdId
	cmdId = vim.api.nvim_create_autocmd({ "CmdLineEnter" }, {
		callback = function()
			local key =
				vim.api.nvim_replace_termcodes("<C-f>", true, false, true)
			vim.api.nvim_feedkeys(key, "c", false)
			vim.api.nvim_feedkeys("0", "n", false)
			cmdId = nil
			return true
		end,
	})
	vim.lsp.buf.rename()
	vim.defer_fn(function()
		if cmdId then
			vim.api.nvim_del_autocmd(cmdId)
		end
	end, 500)
end)
