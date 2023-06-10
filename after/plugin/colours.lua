function colour(colour)
	colour = colour or "tokyonight-storm"
	vim.cmd.colorscheme(colour)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

colour()

-- make sign column transparent (LSP was causing it to be solid for some reason)
vim.cmd("highlight! SignColumn guibg=NONE ctermbg=NONE")
