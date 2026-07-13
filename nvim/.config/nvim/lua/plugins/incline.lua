return {
  "b0o/incline.nvim",
  event = "BufReadPre",
  priority = 1200,
  opts = {
    window = {
      margin = { horizontal = 0 },
      padding = { left = 1, right = 1 },
    },
    render = function(props)
      local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
      if vim.bo[props.buf].modified then
        filename = "[+] " .. filename
      end
      local icon, hl = require("mini.icons").get("file", filename)
      return { { icon, group = hl }, { " " }, { filename } }
    end,
  },
  config = function(_, opts)
    require("incline").setup(opts)
  end,
}
