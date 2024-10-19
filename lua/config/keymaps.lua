local builtin = require("telescope.builtin")



-- This is to open neotree
vim.keymap.set('n', '<C-n>', '<cmd>:Neotree filesystem reveal left<cr>')
vim.keymap.set('n', '<C-g>', builtin.git_commits)
