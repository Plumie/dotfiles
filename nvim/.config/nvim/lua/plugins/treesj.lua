return {
  'Wansmer/treesj',
  keys = { '<leader>sj' },
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = function()
    require('treesj').setup()
    vim.keymap.set('n', '<leader>sj', require('treesj').toggle)
  end,
}
