return {
    {
        "catppuccin/nvim",
        lazy = false,
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup()
            vim.cmd.colorscheme "catppuccin-mocha"
        end
    },
    'nvim-treesitter/playground',
    'mbbill/undotree',
    'junegunn/vim-easy-align',
    'hashivim/vim-terraform',
    -- 'tzachar/local-highlight.nvim',
    'm4xshen/autoclose.nvim',
    'godlygeek/tabular',
    'ggandor/leap.nvim',
    { 'towolf/vim-helm',         ft = 'helm' },
    --{ dir = '~/plugins/tuto.nvim' },
    { 'akinsho/toggleterm.nvim', version = "*", opts = { open_mapping = [[<c-t>]] } },

    'folke/zen-mode.nvim',
    'taybart/b64.nvim',
    -- colorscheme
    'folke/tokyonight.nvim',
    'bluz71/vim-nightfly-colors',
    'rebelot/kanagawa.nvim',
    { 'projekt0n/github-nvim-theme', name = 'github-theme' },


}
