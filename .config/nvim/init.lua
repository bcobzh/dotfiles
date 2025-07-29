local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = " "
vim.o.termguicolors = true
require('lazy').setup({
    spec = {
        { import = 'plugins' },
    },
})
require('custom.init')
require('custom.remap')
require('custom.options')
require('custom.lsp')

--- voir ":h MiniCompletion"  : Helpful mapping
--- To use `<Tab>` and `<S-Tab>` for navigation through completion list, make
--- these mappings
local imap_expr = function(lhs, rhs)
    vim.keymap.set('i', lhs, rhs, { expr = true })
end
imap_expr('<Tab>', [[pumvisible() ? "\<C-n>" : "\<Tab>"]])
imap_expr('<S-Tab>', [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]])
