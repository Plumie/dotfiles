return {
  "unblevable/quick-scope",
  init = function()
    vim.cmd [[
			let g:qs_highlight_on_keys = ["f", "F", "t", "T"]
      hi QuickScopePrimary cterm=bold guifg=black guibg=#85D3F2 gui=bold
			hi QuickScopeSecondary cterm=bold guifg=black guibg=#A5E179 gui=bold
		]]
  end,
}
