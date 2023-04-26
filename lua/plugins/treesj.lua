require('treesj').setup({
  use_default_keymaps = false,
})

vim.keymap.set("n", "<leader>j", ":TSJToggle<CR>", { silent = true, remap = true })
