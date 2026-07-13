return {
  "rlane/pounce.nvim",
  keys = {
    { "s", function()
      require("pounce").pounce({})
    end },
  },
  opts = {}
}
