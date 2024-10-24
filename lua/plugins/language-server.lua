return {
  --  Neovim plugin that allows you to easily install lsp's
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

  -- Allows for lsp integration within nvim
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lsp = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      -- These are my server setups
      lsp.lua_ls.setup({
        capabilities = capabilities,
      })
      lsp.pyright.setup({
        -- capabilities = capabilities,
      })
    end,
  },
}
