vim.pack.add({
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/folke/lazydev.nvim" },
	{ src = "https://github.com/L3MON4D3/LuaSnip" },
	-- mason
	{ src = "https://github.com/williamboman/mason.nvim" },
	{ src = "https://github.com/mason-org/mason-lspconfig.nvim" },
	-- { src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim" },
})



require("mason").setup()
require('lspconfig')

local mason_lspconfig = require("mason-lspconfig")

mason_lspconfig.setup({
	ensure_installed = {
		'bashls', -- ~/.local/share/nvim/site/pack/core/opt/nvim-lspconfig/lsp/bashls.lua
		'dockerls', -- ~/.local/share/nvim/site/pack/core/opt/nvim-lspconfig/lsp/dockerls.lua
		'eslint',
		'helm_ls',
		'lua_ls',  -- ~/.local/share/nvim/site/pack/core/opt/nvim-lspconfig/lsp/lua_ls.lua
		'pyright', -- ~/.local/share/nvim/site/pack/core/opt/nvim-lspconfig/lsp/pyright.lua
		'rust_analyzer', -- ~/.local/share/nvim/site/pack/core/opt/nvim-lspconfig/lsp/rust_analyzer.lua
		--'terraformls',
		'tofu_ls', -- ~/.local/share/nvim/site/pack/core/opt/nvim-lspconfig/lsp/tofu_ls.lua
		'ts_ls',
	},
})


vim.api.nvim_create_autocmd({ "BufWritePre" }, {
	pattern = "*",
	callback = function(args)
		-- On utilise la version moderne qui ne bloque pas si aucun LSP n'est dispo
		vim.lsp.buf.format({ bufnr = args.buf, async = false })
	end,
})
