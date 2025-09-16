return {
	-- luarocks.nvim is a Neovim plugin designed to streamline the installation
	-- of luarocks packages directly within Neovim. It simplifies the process
	-- of managing Lua dependencies, ensuring a hassle-free experience for
	-- Neovim users.
	-- https://github.com/vhyrro/luarocks.nvim
	"vhyrro/luarocks.nvim",
	-- this plugin needs to run before anything else
	priority = 1001,
	opts = {
		rocks = { "magick" },
	},
}
