vim.g.mapleader = " "
vim.g.have_nerd_font = true
vim.opt.backspace = "start,eol,indent"

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true

-- UI
vim.opt.signcolumn = "yes"
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.splitkeep = "cursor"
vim.opt.showcmd = true
vim.opt.cmdheight = 0
vim.opt.pumheight = 2
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.winborder = "single"

-- Indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.fillchars = {eob = " "}

-- Files
vim.opt.undofile = true
vim.opt.swapfile = false

-- Clipboard
vim.schedule(function()
  vim.opt.clipboard = "unnamedplus"
end)

-- Prevent comments from continuing on new line
vim.api.nvim_create_autocmd("BufEnter", {
  group = vim.api.nvim_create_augroup("no-comment-continuation", { clear = true }),
  callback = function()
    vim.opt_local.formatoptions:remove({ "c", "r", "o" })
  end,
})

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

vim.diagnostic.config({
  signs = {
    priority = 10,
    text = {
      [vim.diagnostic.severity.ERROR] = "",
      [vim.diagnostic.severity.WARN]  = "",
      [vim.diagnostic.severity.INFO]  = "󰋼",
      [vim.diagnostic.severity.HINT]  = "",
    },
  }
})
