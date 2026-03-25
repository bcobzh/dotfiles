--'"surround' "functions"" --
-- Surround the word under cursor with parentheses in normal mode.
vim.keymap.set("n", "sp", function()
	vim.cmd("normal! ciw()P")
end
)

-- Surround the visually selected text with parentheses in visual mode.
vim.keymap.set("v", "sp", function()
	vim.cmd("normal! di()P")
end
)

-- Surround the word under cursor with single quotes in normal mode.
vim.keymap.set("n", "sq", function()
	vim.cmd("normal! yiw")
	local word = vim.fn.getreg('"')
	vim.cmd("normal! ciw'" .. word .. "'")
end
)

-- Surround the visually selected text with single quotes in visual mode.
vim.keymap.set("v", "sq", function()
	vim.cmd("normal! di''P")
end
)

-- Surround the word under cursor with double quotes in normal mode.
vim.keymap.set("n", 'sqq', function()
	vim.cmd("normal! yiw")
	local word = vim.fn.getreg('"')
	vim.cmd('normal! ciw"' .. word .. '"')
end
)

-- Surround the visually selected text with double quotes in visual mode.
vim.keymap.set("v", "sqq", function()
	vim.cmd('normal! di""P')
end
)
