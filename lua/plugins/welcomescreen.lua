return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")
    local builtin = require("telescope.builtin")

    -- Set header
    dashboard.section.header.val = {
      "  ██████╗  █████╗ ███╗   ███╗███████╗    ███████╗████████╗ █████╗ ██████╗ ████████╗",
      " ██╔════╝ ██╔══██╗████╗ ████║██╔════╝    ██╔════╝╚══██╔══╝██╔══██╗██╔══██╗╚══██╔══╝",
      " ██║  ███╗███████║██╔████╔██║█████╗      ███████╗   ██║   ███████║██████╔╝   ██║   ",
      " ██║   ██║██╔══██║██║╚██╔╝██║██╔══╝      ╚════██║   ██║   ██╔══██║██╔══██╗   ██║   ",
      " ╚██████╔╝██║  ██║██║ ╚═╝ ██║███████╗    ███████║   ██║   ██║  ██║██║  ██║   ██║   ",
      "  ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝    ╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝   ",
      "                         -Lovin Sharma, -Berry                                     ",
    }

local ext_symbols = {
    py = "",  -- Python symbol
    lua = "", -- Lua symbol
    md = "",  -- Markdown symbol
    txt = "", -- Text symbol
    -- Add more extensions and symbols as needed
}

function NewFile()
    local filename = vim.fn.input('Enter filename: ')
    
    if filename ~= '' then
        local ext = filename:match('%.(%w+)$')  -- Extract the extension
        local symbol = ext and ext_symbols[ext] or ''  -- Get the corresponding symbol
        
        if ext then
            print(symbol)  -- Print the symbol next to the filename
        end
        
        vim.cmd('enew')
        vim.cmd('edit ' .. vim.fn.fnameescape(filename))
    end
end


-- Set menu
dashboard.section.buttons.val = {
    dashboard.button("e", "  -> New file", ":lua NewFile()<CR>"), 
    dashboard.button( "f", "  -> Find file", "<cmd>:Telescope find_files<cr>"),
    dashboard.button( "s", "  -> Settings" , "<cmd>:cd ~/.config/nvim | :e init.lua <cr>"),
    dashboard.button( "q", "󰠚 -> Quit NVIM", "<cmd>:qa<cr>"),
}

    -- Set footer
    local fortune = require("alpha.fortune")
    dashboard.section.footer.val = fortune()

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[ autocmd FileType alpha setlocal nofoldenable ]])
  end,
}

