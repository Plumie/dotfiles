return {
  "nvim-lualine/lualine.nvim",
  opts = function()
    local function hl_fg(name)
      local hl = vim.api.nvim_get_hl(0, { name = name, link = false })
      return hl.fg and string.format("#%06x", hl.fg) or "NONE"
    end

    local colors = {
      bg_dark = "#16161e",
      fg_dim  = hl_fg("Delimiter"),
      comment = hl_fg("Comment"),
      blue    = hl_fg("Function"),
      green   = hl_fg("String"),
      yellow  = hl_fg("Constant"),
      red     = hl_fg("Error"),
      magenta = hl_fg("Statement"),
      none    = "NONE",
    }

    local function mode(color)
      return {
        a = { fg = colors.bg_dark, bg = color, gui = "bold" },
        b = { fg = color, bg = colors.none },
        c = { fg = colors.fg_dim, bg = colors.none },
      }
    end

    return {
      options = {
        theme = {
          normal   = mode(colors.blue),
          insert   = mode(colors.green),
          visual   = mode(colors.magenta),
          replace  = mode(colors.red),
          command  = mode(colors.yellow),
          terminal = mode(colors.green),
          inactive = {
            a = { fg = colors.comment, bg = colors.none },
            b = { fg = colors.comment, bg = colors.none },
            c = { fg = colors.comment, bg = colors.none },
          },
        },
        globalstatus = true,
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
    }
  end,
}
