return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    bigfile = {},
    indent = { animate = { enabled = false } },
    input = {},
    picker = {
      win = {
        input = {
          keys = {
            ["<Tab>"] = { "list_down", mode = { "i", "n" } },
            ["<S-Tab>"] = { "list_up", mode = { "i", "n" } },
          },
        },
      },
    },
    rename = {
      config = function()
        local snacks = require("snacks")
        vim.api.nvim_create_autocmd("User", {
          pattern = "OilActionsPost",
          callback = function(event)
            if event.data.actions[1].type == "move" then
              snacks.rename.on_rename_file(
                event.data.actions[1].src_url,
                event.data.actions[1].dest_url
              )
            end
          end,
        })
      end,
    },
    statuscolumn = {},
  },
  keys = {
    { "<leader>p", function() require("snacks").picker.files()end, desc = "Smart search" },
    { "<leader>f", function() require("snacks").picker.grep()end, desc = "Grep" },
    { "<leader>t", function() require("snacks").picker.todo_comments() end },
    { "gd", function() require("snacks").picker.lsp_definitions() end, desc = "Goto Definition" },
    { "gD", function() require("snacks").picker.lsp_declarations()end, desc = "Goto Declaration" },
    { "gr", function() require("snacks").picker.lsp_references()end, nowait = true, desc = "References" },
    { "gI", function() require("snacks").picker.lsp_implementations()end, desc = "Goto Implementation" },
    { "gy", function() require("snacks").picker.lsp_type_definitions()end, desc = "Goto T[y]pe Definition" },
  },
}
