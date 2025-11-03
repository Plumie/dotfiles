return {
  "nvim-mini/mini.nvim",
  version = false,
  dependencies = {
    "JoosepAlviste/nvim-ts-context-commentstring",
  },
  config = function()
    require("mini.surround").setup({
      mappings = {
        add = "gs",
        delete = "ds",
        replace = "cs",
      },
    })

    require("mini.icons").setup()

    require("mini.comment").setup({
      options = {
        custom_commentstring = function()
          return require("ts_context_commentstring").calculate_commentstring()
            or vim.bo.commentstring
        end,
      },
    })

    local splitjoin = require("mini.splitjoin")
    local gen_hook = splitjoin.gen_hook
    local curly = { brackets = { "%b{}" } }
    local add_comma_curly = gen_hook.add_trailing_separator(curly)
    local del_comma_curly = gen_hook.del_trailing_separator(curly)
    local pad_curly = gen_hook.pad_brackets(curly)
    splitjoin.setup({
      mappings = {
        toggle = "<leader>sj",
      },
      split = { hooks_post = { add_comma_curly } },
      join = { hooks_post = { del_comma_curly, pad_curly } },
    })
  end,
}
