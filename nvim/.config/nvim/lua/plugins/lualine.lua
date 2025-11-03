return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    options = {
      theme = function()
        local theme = require("lualine.themes.palenight")
        theme.normal.b.bg = nil
        theme.normal.c.bg = nil
        theme.visual.b.bg = nil
        theme.insert.b.bg = nil
        return theme
      end,
      component_separators = { left = " ", right = " " },
      section_separators = { left = " ", right = " " },
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch", "diff", "diagnostics" },
      lualine_c = { { "filename", path = 1 } },
      lualine_x = { "filetype" },
      lualine_y = { "overseer" },
      lualine_z = { "progress" },
    },
  },
}
