vim.o.autocomplete = true
vim.o.signcolumn = 'yes:1'
vim.o.completeopt = 'fuzzy,menuone,popup,noselect'

-- To use `<Tab>` and `<S-Tab>` for navigation through completion list, make
-- these mappings
local imap_expr = function(lhs, rhs)
	vim.keymap.set('i', lhs, rhs, { expr = true })
end
imap_expr('<Tab>', [[pumvisible() ? "\<C-n>" : "\<Tab>"]])
imap_expr('<S-Tab>', [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]])
require('vim._core.ui2').enable({
	enable = true, -- Whether to enable or disable the UI.
	msg = {     -- Options related to the message module.
		---@type 'cmd'|'msg' Where to place regular messages, either in the
		---cmdline or in a separate ephemeral message window.
		target = 'cmd',
		timeout = 4000, -- Time a message is visible in the message window.
	},
})

vim.api.nvim_create_autocmd('InsertCharPre', {
	callback = function(env)
		-- print(string.format('event fired: %s', vim.inspect(env)))
		if vim.fn.pumvisible() == 1 or vim.fn.state('m') == 'm' then
			return
		end
		if env.file == "" then
			return
		end

		local clients = vim.lsp.get_clients({ bufnr = 0 })

		if next(clients) ~= nil then
			vim.lsp.completion.get()
		else
			local key = vim.keycode('<C-x><C-n>')
			vim.api.nvim_feedkeys(key, 'm', false)
		end
	end
})
-- Autocomplete Lsp
vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		if client:supports_method('textDocument/completion') then
			vim.lsp.completion.enable(true, client.id, ev.buf, {
				autotrigger = true,
				convert = function(item)
					return { abbr = item.label }
				end,
			})
		end
	end,
})
