vim.opt.winborder = "rounded" -- Use rounded borders for windows
vim.opt.autoindent = true -- Enable auto indentation
vim.opt.list = true -- Show whitespace characters
vim.opt.tabstop = 4 -- Number of spaces for a tab
vim.opt.softtabstop = 4 -- Number of spaces for a tab when editing
vim.opt.shiftwidth = 4 -- Number of spaces for autoindent
vim.opt.listchars = "tab: ,multispace:|    ,eol:󰌑" -- Characters to show for tabs, spaces, and end of line
vim.opt.list = true -- Show whitespace characters
-- vim.opt.showtabline = 2
vim.opt.wrap = false -- Disable line wrapping
vim.opt.cursorcolumn = false
vim.opt.ignorecase = true
vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.number = true
-- vim.opt.relativenumber = true

vim.cmd.filetype("plugin indent on") -- Enable filetype detection, plugins, and indentation
vim.lsp.log.set_level('INFO')
vim.diagnostic.config({ virtual_text = true })
