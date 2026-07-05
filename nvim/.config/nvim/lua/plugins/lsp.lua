return {
  "neovim/nvim-lspconfig",
  dependencies = {
    {
      "mason-org/mason.nvim",
      config = true,
    },
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    "saghen/blink.cmp",
  },
  config = function()
    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("lsp-attach", { clear = true }),
      callback = function(event)
        local opts = { buffer = event.buf }
        vim.keymap.set("n", "K", function()
          vim.lsp.buf.hover()
        end, opts)
        vim.keymap.set("n", "J", function()
          vim.diagnostic.open_float()
        end, opts)
        vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, opts)
        vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, opts)
        vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, opts)
      end,
    })

    local servers = {
      lua_ls = {
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
          },
        },
      },
    }

    require("mason").setup()
    require("mason-tool-installer").setup({
      ensure_installed = vim.tbl_keys(servers),
    })

    vim.lsp.config("*", {
      capabilities = require("blink.cmp").get_lsp_capabilities(),
    })
    for server, config in pairs(servers) do
      vim.lsp.config(server, config)
    end

    require("mason-lspconfig").setup()
  end,
}
