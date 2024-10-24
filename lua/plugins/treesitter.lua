return {
  "nvim-treesitter/nvim-treesitter",

  build = ":TSUpdate",
    config = function()
      require'nvim-treesitter.configs'.setup {
        -- A list of parser names, or "all" (the listed parsers MUST always be installed)
        ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
        highlight = { enable = true },
        indent = { enable = true },
      }
    end,
}
