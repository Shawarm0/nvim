return {
	"navarasu/onedark.nvim",
	lazy = false, --make sure we load this during startup
	priority = 1000, -- make sure to load this before everything else
	config = function()
		require("onedark").setup({})
		vim.cmd("colorscheme onedark")
	end,
}
