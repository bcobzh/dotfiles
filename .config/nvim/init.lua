vim.g.mapleader = " "
vim.cmd([[set mouse=]])
vim.cmd([[set noswapfile]])

vim.pack.add({
	{ src = "https://github.com/catppuccin/nvim" },
})

vim.cmd("colorscheme catppuccin-mocha")

require('config.options')
require('config.plugins')
require('config.autocmd')
require('config.keymaps')
require('config.lsp')
require('config.completion')
require('config.surround')

require("luasnip").setup({ enable_autosnippets = true })
vim.api.nvim_set_hl(0, 'LineNr', { fg = "white" })
