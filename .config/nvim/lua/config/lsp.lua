vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		if client:supports_method('textDocument/completion') then
			vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
		end
	end,
})
-- vim.cmd("set completeopt+=noselect")
-- vim.g.winborder = 'rounded'
-- vim.lsp.buf.add_workspace_folder()

vim.lsp.enable({
	'bashls',     -- ~/.local/share/nvim/site/pack/core/opt/nvim-lspconfig/lsp/bashls.lua
	'dockerls',   -- ~/.local/share/nvim/site/pack/core/opt/nvim-lspconfig/lsp/dockerls.lua
	'helm_ls',    -- ~/.local/share/nvim/site/pack/core/opt/nvim-lspconfig/lsp/helm_ls.lua
	'lua_ls',     -- ~/.local/share/nvim/site/pack/core/opt/nvim-lspconfig/lsp/lua_ls.lua
	'pyright',    -- ~/.local/share/nvim/site/pack/core/opt/nvim-lspconfig/lsp/pyright.lua
	'rust_analyzer', -- ~/.local/share/nvim/site/pack/core/opt/nvim-lspconfig/lsp/rust_analyzer.lua
	'terraformls', -- ~/.local/share/nvim/site/pack/core/opt/nvim-lspconfig/lsp/terraformls.lua
	'tofu_ls',    -- ~/.local/share/nvim/site/pack/core/opt/nvim-lspconfig/lsp/tofu_ls.lua
})
vim.lsp.log.set_level('WARN')
vim.diagnostic.config({ virtual_lines = { current_line = true } })
