return {
  "dmtrKovalenko/fff.nvim",
  build = function()
    require("fff.download").download_or_build_binary()
  end,
  opts = {
    prompt = "",
    title = 'Search',
    layout = {
      prompt_position = "top",
      border = "bold"
    },
    keymaps = {
      move_up = { "<Up>", "<S-Tab>" },
      move_down = { "<Down>", "<Tab>" },
      cycle_grep_modes = "<C-c>",
      toggle_select = "<C-v>",
    },
  },
  lazy = false,
  keys = {
    { "<leader>p", function() require("fff").find_files() end },
    { "<leader>f", function() require("fff").live_grep() end },
    {
      "<leader>8",
      function() require("fff").live_grep_under_cursor() end,
      mode = { "n", "x" },
    },
  },
}
