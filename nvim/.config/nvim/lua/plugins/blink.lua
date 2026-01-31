return {
  "saghen/blink.cmp",
  version = "1.*",
  opts = {
    keymap = {
      ["<S-Tab>"] = { "select_prev", "fallback" },
      ["<Tab>"] = { "select_next", "fallback" },
      ["<CR>"] = { "accept", "fallback" },
    },
    sources = {
      default = { "lsp", "path", "buffer" },
    },
  },
}
