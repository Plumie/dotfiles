return {
  "folke/tokyonight.nvim",
  opts = {
    transparent = true,
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
    on_highlights = function(hl, c)
      hl.Visual = {
        bg = c.fg,
        fg = c.black
      }
      hl.CursorLine = {
        bg = "#16161D"
      }
      hl.WinSeparator = {
        fg  = c.fg
      }
    end
  },
  init = function()
    vim.cmd([[colorscheme tokyonight-storm]])
    vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "white" })
    vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "white" })
    vim.api.nvim_set_hl(0, "StatusLine", { guibg = NONE, ctermbg = NONE })
  end,
}
