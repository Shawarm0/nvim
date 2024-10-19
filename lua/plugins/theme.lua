return {
	"olimorris/onedarkpro.nvim",
	lazy = false, --make sure we load this during startup
	priority = 1000, -- make sure to load this before everything else
	config = function()
		require("onedarkpro").setup({})
		vim.cmd("colorscheme onedark")
	end,
}
