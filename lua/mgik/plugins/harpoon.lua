return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	keys = {
		"<leader>a",
		"<leader>hl",
		"<M-j>",
		"<M-l>",
		"<M-;>",
		"<M-p>",
		"<M-n>",
	},
	config = function()
		local harpoon = require("harpoon")
		harpoon:setup()
		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end)
		vim.keymap.set("n", "<leader>hl", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)
		vim.keymap.set("n", "<M-j>", function()
			harpoon:list():select(1)
		end)
		vim.keymap.set("n", "<M-k>", function()
			harpoon:list():select(2)
		end)
		vim.keymap.set("n", "<M-l>", function()
			harpoon:list():select(3)
		end)
		vim.keymap.set("n", "<M-;>", function()
			harpoon:list():select(4)
		end)
		vim.keymap.set("n", "<M-p>", function()
			harpoon:list():prev()
		end)
		vim.keymap.set("n", "<M-n>", function()
			harpoon:list():next()
		end)
	end,
}
