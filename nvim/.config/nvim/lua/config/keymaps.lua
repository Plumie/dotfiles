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

-- Prevent snippet behavior on Esc
vim.keymap.set({ "i", "s" }, "<Esc>", function()
  if vim.snippet then vim.snippet.stop() end
  return "<Esc>"
end, { expr = true })

-- Built-in treesitter node selection
vim.keymap.set("x", "<CR>", function()
  if vim.treesitter.get_parser(nil, nil, { error = false }) then
    require("vim.treesitter._select").select_parent(vim.v.count1)
  else
    vim.lsp.buf.selection_range(vim.v.count1)
  end
end)

vim.keymap.set("x", "<BS>", function()
  if vim.treesitter.get_parser(nil, nil, { error = false }) then
    require("vim.treesitter._select").select_child(vim.v.count1)
  else
    vim.lsp.buf.selection_range(-vim.v.count1)
  end
end)

vim.keymap.set("x", "<Tab>", function()
  require("vim.treesitter._select").select_next(vim.v.count1)
end)

vim.keymap.set("x", "<S-Tab>", function()
  require("vim.treesitter._select").select_prev(vim.v.count1)
end)

-- Built-in undotree
vim.cmd("packadd nvim.undotree")
vim.keymap.set("n", "<leader>u", require("undotree").open)
