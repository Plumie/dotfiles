  return {
  'saghen/blink.cmp',
  version = '*',
  opts = {
    keymap = {
      preset = 'default',
      ['<S-Tab>'] = { 'select_prev', 'fallback' },
      ['<Tab>'] = { 'select_next', 'show', 'fallback' },
      ['<CR>'] = { 'accept', 'fallback' }
    },
    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = 'mono'
    },
    completion = {
      menu = {
        auto_show = function(ctx) return ctx.mode ~= 'cmdline' end,
        border = 'single',
      },
      documentation = { window = { border = 'single' } },
    },
    signature = { window = { border = 'single' } },
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },
  },
  opts_extend = { "sources.default" }
}
