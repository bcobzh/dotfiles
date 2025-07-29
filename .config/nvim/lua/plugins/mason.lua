
return {
enabled = true,
    { 'williamboman/mason.nvim',
    enabled = true,
    config = function()
        require('mason').setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        })
    end
},
{ 'williamboman/mason-lspconfig.nvim',
config = function()
    require('mason-lspconfig').setup({

    ensure_installed = {
        'bashls',
        'cmake',
        'dockerls',
        'eslint',
        'helm_ls',
        'lua_ls',
        'pyright',
        'ts_ls',
    },
    })
end
        },
    }
