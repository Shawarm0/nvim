local builtin = require("telescope.builtin")
local keymap = vim.api.nvim_set_keymap
local opts = {
  noremap = true,
  silent = true,
}


-- This is to open neotree
vim.keymap.set('n', '<C-n>', '<cmd>:Neotree filesystem reveal left<cr>')
vim.keymap.set('n', '<C-g>', builtin.git_commits)
vim.keymap.set('n', '<C-l>', '<cmd>:Telescope notify<cr>')
vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
-- Set the key mapping to call the custom function

-- --Bufers management
vim.keymap.set("n", "<leader>bd", function()
  vim.cmd ":bdelete!"
end, opts)
keymap("n", "<C-s>", ":vsp<CR>", {})
keymap("n", "<Leader>bh", ":split<CR>", {})
keymap("n", "<C-k>", "<C-w>k", opts)
-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
-- Movements
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-l>", "<C-w>l", opts)


-- Terminal excape
keymap("t", "<Esc>", "<C-\\><C-n>", opts)
