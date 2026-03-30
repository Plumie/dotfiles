return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    options = {
      globalstatus = true,
      theme = function()
        local colors = require("lualine.utils.loader").load_theme(vim.g.colors_name or "default")
        for _, mode in pairs(colors) do
          for _, section in pairs(mode) do
            if section.bg then
              section.fg = section.bg
              section.bg = nil
            end
          end
        end
        colors.normal.b.fg = "#bb9af7"
        colors.normal.c.fg = "#ffffff"
        return colors
      end,
      component_separators = { left = " ", right = " " },
      section_separators = { left = " ", right = " " },
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch", "diagnostics" },
      lualine_c = { { "filename", path = 0 } },
      lualine_x = { "filetype" },
      lualine_y = {},
      lualine_z = {},
    },
  },
}
