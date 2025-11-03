return {
  "folke/trouble.nvim",
  opts = {},
  cmd = "Trouble",
  keys = {
    {
      "<leader>ot",
      "<cmd>Trouble diagnostics toggle<CR>",
      desc = "Diagnostics (Trouble)",
    },
    {
      "<leader>of",
      "<cmd>Trouble diagnostics toggle filter.buf=0<CR>",
      desc = "Buffer Diagnostics (Trouble)",
    },
    {
      "<leader>oq",
      "<cmd>Trouble qflist toggle<CR>",
      desc = "Quickfix List (Trouble)",
    },
  },
}
