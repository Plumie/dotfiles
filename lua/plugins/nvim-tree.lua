return {
	'nvim-tree/nvim-tree.lua',

	lazy = true,
	keys = {
		'<Leader>eo',
	},
	dependencies = {
			'nvim-tree/nvim-web-devicons',
	},
	config = function()
		local height_ratio = 0.8
		local width_ratio = 0.5

		require('nvim-tree').setup({
			disable_netrw = true,
			hijack_netrw = true,
			respect_buf_cwd = true,
			sync_root_with_cwd = true,
			view = {
				relativenumber = true,
				float = {
					enable = true,
					open_win_config = function()
						local screen_w = vim.opt.columns:get()
						local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
						local window_w = screen_w * width_ratio
						local window_h = screen_h * height_ratio
						local window_w_int = math.floor(window_w)
						local window_h_int = math.floor(window_h)
						local center_x = (screen_w - window_w) / 2
						local center_y = ((vim.opt.lines:get() - window_h) / 2) - vim.opt.cmdheight:get()
						return {
							border = "rounded",
							relative = "editor",
							row = center_y,
							col = center_x,
							width = window_w_int,
							height = window_h_int,
						}
						end,
				},
				width = function()
					return math.floor(vim.opt.columns:get() * width_ratio)
				end,
			},
			diagnostics = {
				enable = true,
			},
		})

		vim.api.nvim_set_keymap('n', '<Leader>eo', ':NvimTreeToggle<CR>', {silent = true})
	end
}
