local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- local builtin = require("telescope.builtin")

-- Directory Navigation
keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>", opts)
keymap.set("n", "<leader>f", ":NvimTreeFocus<CR>", opts)

-- Pane Navigation
keymap.set("n", "<C-h>", "<C-w>h", opts) -- Left
keymap.set("n", "<C-l>", "<C-w>l", opts) -- Right
keymap.set("n", "<C-k>", "<C-w>k", opts) -- Up
keymap.set("n", "<C-j>", "<C-w>j", opts) -- Down

-- Telescope
keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", opts) 
keymap.set("n", "<leader>lg", ":Telescope live_grep<CR>", opts) 

-- Comments
vim.api.nvim_set_keymap("n", "<C-c>", "gcc", { noremap = false })
vim.api.nvim_set_keymap("v", "<C-c>", "gb", { noremap = false })

-- Indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")
