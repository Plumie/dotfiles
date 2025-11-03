vim.g.mapleader = " "
vim.g.have_nerd_font = true
vim.opt.backspace = "start,eol,indent"
vim.opt.mouse = ""

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
vim.opt.scrolloff = 5
vim.opt.cursorline = true
vim.opt.wrap = false
vim.o.winborder = "single"

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
vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Diagnostic symbols
local symbols = { Error = "󰅙", Info = "󰋼", Hint = "󰌵", Warn = "" }

for name, icon in pairs(symbols) do
  local hl = "DiagnosticSign" .. name
  vim.fn.sign_define(hl, { text = icon, numhl = hl, texthl = hl })
end
