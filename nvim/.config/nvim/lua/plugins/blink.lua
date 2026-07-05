return {
  "saghen/blink.cmp",
  version = "*",
  dependencies = { "saghen/blink.lib" },
  build = "cargo build --release",
  opts = {
    completion = {
      menu = { border = "" },
      documentation = { window = { border = "" } },
    },
    signature = { window = { border = "" } },
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
