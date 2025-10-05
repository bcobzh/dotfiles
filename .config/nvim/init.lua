vim.g.mapleader = " "
vim.cmd([[set mouse=]])
vim.cmd([[set noswapfile]])
vim.cmd [[set completeopt+="menuone,noselect,popup"]]


vim.pack.add({
	{ src = "https://github.com/catppuccin/nvim" },
	{ src = "https://github.com/chentoast/marks.nvim" },
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "main" },
	{ src = "https://github.com/neovim/nvim-lspconfig" }, -- les fichiers seront dans ~/.local/share/nvim/site/pack/core/opt/nvim-lspconfig/lsp/
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/L3MON4D3/LuaSnip" },
	{ src = "https://github.com/christoomey/vim-tmux-navigator" },
	{ src = "https://github.com/folke/noice.nvim" },
	{ src = "https://github.com/MunifTanjim/nui.nvim" },
	{ src = "https://github.com/folke/snacks.nvim" },
	-- blink.cmp
	{
		src = "https://github.com/saghen/blink.cmp",
		build = 'cargo build --release',
		version = '1.*',
		opts = {
			keymap = { preset = "default" },
			snippets = { preset = "luasnip" },
			fuzzy = { implementation = "prefer_rust_with_warning" },
			appearance = {
				nerd_font_variant = "mono"
			},
			completion = {
				accept = {
					auto_brackets = { enabled = true },
				},
				documentation = {
					auto_show = true
				},
				ghost_text = { enabled = false },
			},
			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
			},
			cmdline = { enabled = false },
			signature = { enabled = false },
		},
	},
	-- blink.cmp
	{ src = "https://github.com/mbbill/undotree" },
	{ src = "https://github.com/junegunn/vim-easy-align" },
	{ src = "https://github.com/opentofu/tofu-ls" },
	{ src = "https://github.com/rcarriga/nvim-notify" },
	--- telescope et dependencies
	{ src = "https://github.com/nvim-telescope/telescope.nvim",            version = "master" },
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/nvim-telescope/telescope-ui-select.nvim" },
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/nvim-telescope/telescope-fzf-native.nvim", build = "make" },


})

require('config.options')
require('config.keymaps')
require('config.autocmd')
require('config.plugins')
require('config.lsp')

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

autocmd({ "BufWritePre" }, {
	callback = function()
		vim.lsp.buf.format()
	end
})


require "notify".setup({
	vim.tbl_extend('keep', {
		-- other stuff
		background_colour = "#000000"
	}, {})
})


require("luasnip").setup({ enable_autosnippets = true })
require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/snippets/" })

vim.cmd("colorscheme catppuccin-mocha")
vim.cmd(":hi statusline guibg=NONE")



vim.api.nvim_create_autocmd("BufWinEnter", {
	pattern = "*.jsx,*.tsx",
	group = vim.api.nvim_create_augroup("TS", { clear = true }),
	callback = function()
		vim.cmd([[set filetype=typescriptreact]])
	end
})
