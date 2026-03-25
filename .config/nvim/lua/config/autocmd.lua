function vim.getVisualSelection()
	vim.cmd('noau normal! "vy"')
	local text = vim.fn.getreg('v')
	vim.fn.setreg('v', {})

	text = string.gsub(text, "\n", "")
	if #text > 0 then
		return text
	else
		return ''
	end
end

function vim.toBase64()
	local text = vim.fn.getreg('v')
	print(text)
	local encoded = vim.base64.encode(text)
	local decoded = vim.base64.decode(encoded)
	vim.cmd('normal! c' .. encoded)
end

-- sauter automatiquement au dernier endroit visité dans un fichier avant de le quitter
vim.api.nvim_create_autocmd('BufReadPost', {
	callback = function()
		local mark = vim.api.nvim_buf_get_mark(0, '"')
		local lcount = vim.api.nvim_buf_line_count(0)
		if mark[1] > 0 and mark[1] <= lcount then
			pcall(vim.api.nvim_win_set_cursor, 0, mark)
		end
	end,
})

-- open help in vertical split
vim.api.nvim_create_autocmd("FileType", {
	pattern = "help",
	command = "wincmd L",
})

-- Yank Highlight
vim.api.nvim_create_autocmd('TextYankPost', {
	group = vim.api.nvim_create_augroup('yank_highlight', { clear = true }),
	desc = 'Highlight on yank',
	callback = function()
		vim.hl.on_yank { higroup = 'Visual' }
	end,
})
