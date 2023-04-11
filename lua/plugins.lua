local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug('nvim-lualine/lualine.nvim')
Plug('nvim-tree/nvim-web-devicons')
Plug('nvim-tree/nvim-tree.lua')
Plug('folke/tokyonight.nvim', {branch = 'main' })
Plug('goolord/alpha-nvim')
Plug('eandrju/cellular-automaton.nvim')
Plug('norcalli/nvim-colorizer.lua')
Plug('lukas-reineke/indent-blankline.nvim')

Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
Plug('zbirenbaum/copilot.lua')
Plug('nvim-telescope/telescope.nvim', {tag = '0.1.1' })
Plug('nvim-lua/plenary.nvim')
Plug('ggandor/leap.nvim')
Plug('tpope/vim-fugitive')
Plug('kylechui/nvim-surround')
Plug('numToStr/Comment.nvim')
Plug('nvim-telescope/telescope-project.nvim')
Plug('lewis6991/gitsigns.nvim')
Plug('windwp/nvim-ts-autotag')
Plug('Wansmer/treesj')

Plug('christoomey/vim-tmux-navigator')
Plug('michaeljsmith/vim-indent-object')
Plug 'windwp/nvim-autopairs'
Plug("MunifTanjim/nui.nvim")
Plug("dpayne/CodeGPT.nvim")
Plug('ThePrimeagen/harpoon')

Plug('neovim/nvim-lspconfig')
Plug('williamboman/mason.nvim', {['do'] = ':MasonUpdate'})
Plug('williamboman/mason-lspconfig.nvim')
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('VonHeikemen/lsp-zero.nvim', {branch = 'v1.x'})
Plug('L3MON4D3/LuaSnip')
Plug('saadparwaiz1/cmp_luasnip')
Plug('rafamadriz/friendly-snippets')

vim.call('plug#end')

vim.g["codegpt_openai_api_key"] = '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'

require('plugins/alpha')
require('plugins/harpoon')
require('plugins/blankline')
require('plugins/cellular-automaton')
require('plugins/colorizer')
require('plugins/comment')
require('plugins/copilot')
require('plugins/fugitive')
require('plugins/gitsigns')
require('plugins/leap')
require('plugins/lualine')
require('plugins/nvim-web-devicons')
require('plugins/surround')
require('plugins/telescope')
require('plugins/treesitter')
require('plugins/nvim-tree')
require('plugins/theme')
require('plugins/lsp')
require('plugins/autopairs')
require('plugins/treesj')
