return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local actions = require('telescope.actions')

    require('telescope').setup{
      defaults = {
        -- other defaults...
        mappings = {
          n = {
            -- other normal mode mappings...
            ["q"] = actions.close, -- map `q` to close action in normal mode
          },
        },
      },
    }
  end,
}

