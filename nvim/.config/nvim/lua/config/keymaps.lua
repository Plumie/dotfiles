local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<leader>so", ":e $MYVIMRC | :cd %:p:h<CR>:Oil<CR>", opts)

-- Editing
vim.keymap.set("n", "x", '"_x', opts)

-- Window management
vim.keymap.set("n", "vs", ":vs<CR><C-w>l", opts)
vim.keymap.set("n", "vd", ":split<CR><C-w>j", opts)

-- Navigation
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)
vim.keymap.set("n", "gp", "`[v`]", opts)

-- File operations
vim.keymap.set("n", "<leader>q", ":q<CR>", opts)
vim.keymap.set("n", "<leader>w", ":silent! w!<CR>", opts)

-- Search
vim.keymap.set("n", "<Esc>", ":noh<CR>", opts)
