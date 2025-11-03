return {
  "stevearc/oil.nvim",
  opts = {
    view_options = {
      show_hidden = true,
    },
    keymaps = {
      ["\\"] = "actions.parent",
      ["<C-h>"] = false,
      ["<C-l>"] = false,
    },
  },
  lazy = false,
  keys = {
    { "<leader>e", "<cmd>Oil<CR>", desc = "Open oil" },
  },
}
