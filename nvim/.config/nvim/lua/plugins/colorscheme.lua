return {
  "folke/tokyonight.nvim",
  opts = {
    transparent = true,
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
  },
  init = function()
    vim.cmd([[colorscheme tokyonight-night]])
    vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "white" })
    vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "white" })
    vim.api.nvim_set_hl(0, "WinSeparator", { fg = "white" })
  end,
}
