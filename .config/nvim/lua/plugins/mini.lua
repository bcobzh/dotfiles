
return {
    {
        'echasnovski/mini.nvim',
        enabled = true,
        config = function()
            require('mini.ai').setup()
            require('mini.icons').setup()
            local gen_loader = require('mini.snippets').gen_loader
            require('mini.snippets').setup({
                snippets = {

                    -- Load snippets based on current language by reading files from
                    -- "snippets/" subdirectories from 'runtimepath' directories.
                    gen_loader.from_lang(),
                },
            })
        end
    },
    { "rafamadriz/friendly-snippets" }
}
