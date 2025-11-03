return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  dependencies = {
    "RRethy/nvim-treesitter-textsubjects",
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  opts = {
    ensure_installed = { "javascript", "html", "typescript", "css", "tsx" },
    context_commentstring = {
      config = {
        javascript = {
          __default = "// %s",
          jsx_element = "{/* %s */}",
          jsx_fragment = "{/* %s */}",
          jsx_attribute = "// %s",
          comment = "// %s",
        },
      },
      typescript = { __default = "// %s", __multiline = "/* %s */" },
    },
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
    textobjects = {
      select = {
        enable = true,
        lookahead = true,
        keymaps = {
           ["af"] = "@function.outer",
           ["if"] = "@function.inner",
           ["ac"] = "@call.outer",
           ["ic"] = "@call.inner",
           ["ax"] = "@attribute.outer",
           ["ix"] = "@attribute.inner",
           ["aa"] = "@parameter.outer",
           ["ia"] = "@parameter.inner",
        }
      }
    }
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
    require("nvim-treesitter-textsubjects").configure({
      prev_selection = "<BS>",
      keymaps = { ["<CR>"] = "textsubjects-smart" },
    })
  end,
}
