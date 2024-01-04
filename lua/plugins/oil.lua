return {
  'stevearc/oil.nvim',
  opts = {
    buf_options = {
      buflisted = false
    },
    view_options = {
      show_hidden = true,
    },
    keymaps = {
      ["\\"] = "actions.parent"
    }
  },
  lazy= false,
  keys = {
    {
      '<leader>eo',
      '<cmd>Oil<CR>',
      desc = "Open oil"
    }
  }
}
