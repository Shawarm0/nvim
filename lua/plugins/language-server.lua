return {
	--  Neovim plugin that allows you to easily manage external editor tooling
	{
    	"williamboman/mason.nvim",
	config = function()
	require("mason").setup()
    	end,
	},

	-- Allows for mason and nvim.lsp to talk to each other 
	{
	"williamboman/mason-lspconfig.nvim",
	config = function()
	require("mason-lspconfig").setup({
		ensure_installed = { "lua_ls", "quick_lint_js", "pyright" },
		})
	end,
	},

	{
	"neovim/nvim-lspconfig",
	config = function()
	local lsp = require("lspconfig")
		 
	-- These are my server setups
	lsp.lua_ls.setup({})
    	lsp.pyright.setup({})
	
	end,
	}

}
