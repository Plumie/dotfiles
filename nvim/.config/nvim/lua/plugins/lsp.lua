return {
  "neovim/nvim-lspconfig",
  dependencies = {
    {
      "williamboman/mason.nvim",
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
        vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, opts)
        vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, opts)
        vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, opts)
        vim.keymap.set("n", "J", vim.diagnostic.open_float, opts)
      end,
    })

    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
      vim.lsp.handlers.hover,
      { border = "rounded" }
    )
    vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
      vim.lsp.handlers.signature_help,
      { border = "rounded" }
    )

    local servers = {
      lua_ls = {
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
          },
        },
      },
    }

    local ensure_installed = vim.tbl_keys(servers or {})

    require("mason").setup()
    require("mason-tool-installer").setup({ ensure_installed = ensure_installed })
    require("mason-lspconfig").setup({
      handlers = {
        function(server_name)
          local server = servers[server_name] or {}
          server.capabilities = require("blink.cmp").get_lsp_capabilities(server.capabilities)
          require("lspconfig")[server_name].setup(server)
        end,
      },
    })

  end,
}
