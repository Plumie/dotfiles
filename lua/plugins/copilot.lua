return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  opts = {
    suggestion = {
      auto_trigger = true,
      keymap = {
        accept = "<S-Tab>",
        next = "<C-k>",
        prev = "<C-j>",
      }
    }
  }
}
