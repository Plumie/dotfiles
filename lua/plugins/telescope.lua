return{
	'nvim-telescope/telescope.nvim', 
	tag = '0.1.1',
	lazy = true,
	keys = {
		'<leader>p',
		'<leader>f',
		'<leader>ep',
    '<leader>eu',
    '<leader>gb',
    '<leader>gs'
	},
	dependencies = {
		'nvim-telescope/telescope-project.nvim',
		'nvim-lua/plenary.nvim',
    "debugloop/telescope-undo.nvim",
	},
	config = function()
		local telescope = require('telescope')

		telescope.setup({
			extensions = {
				project = {
					sync_with_nvim_tree = true,
				},
        undo = {
          mappings = {
            i = {
              ["<CR>"] = require("telescope-undo.actions").restore,
            },
            n = {
              ["<CR>"] = require("telescope-undo.actions").restore,
            },
          }
        },
			}
		})

		local builtin = require('telescope.builtin')

		-- Find files
		vim.keymap.set('n', '<leader>p', builtin.find_files, {})

		-- Find in files
		vim.keymap.set('n', '<leader>f', builtin.live_grep, {})

		-- Open diagnostics
		vim.keymap.set('n', '<leader>ed', builtin.diagnostics, {})
		
		-- Open branches
		vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
    
		-- Open branches
		vim.keymap.set('n', '<leader>gs', builtin.git_stash, {})
    
		-- Project navigation
		vim.api.nvim_set_keymap(
			'n',
			'<leader>ep',
			":lua require'telescope'.extensions.project.project{}<CR>",
			{noremap = true, silent = true}
		)

		vim.api.nvim_set_keymap(
			'n',
			'<leader>eu',
			":lua require'telescope'.extensions.undo.undo{}<CR>",
			{noremap = true, silent = true}
		)
	end
}
