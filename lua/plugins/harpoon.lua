return {
  'ThePrimeagen/harpoon',
  config = function()
    local default = { noremap = true, silent = true }

    -- Main
    vim.keymap.set('n', '<leader>a', '<Cmd>lua require("harpoon.mark").add_file()<CR>', default)
    vim.keymap.set('n', '<leader><Tab>', '<Cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>', default)

    -- Navigation
    vim.keymap.set('n', '<C-1>', '<Cmd>lua require("harpoon.ui").nav_file(1)<CR>', default)
    vim.keymap.set('n', '<C-2>', '<Cmd>lua require("harpoon.ui").nav_file(2)<CR>', default)
    vim.keymap.set('n', '<C-3>', '<Cmd>lua require("harpoon.ui").nav_file(3)<CR>', default)
    vim.keymap.set('n', '<C-4>', '<Cmd>lua require("harpoon.ui").nav_file(4)<CR>', default)
    vim.keymap.set('n', '<C-5>', '<Cmd>lua require("harpoon.ui").nav_file(5)<CR>', default)
  end
}
