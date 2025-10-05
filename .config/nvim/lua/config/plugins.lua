
require "marks".setup {
	builtin_marks = { "<", ">", "^" },
	refresh_interval = 250,
	sign_priority = { lower = 10, upper = 15, builtin = 8, bookmark = 20 },
	excluded_filetypes = {},
	excluded_buftypes = {},
	mappings = {}
}

require "noice".setup( )
require "blink.cmp".setup({
})
require "mason".setup({
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
}
)
require "telescope".setup({
	pickers = {
		find_files = {
			theme = 'ivy'
		}
	},
	extentions = {
		fzf = {}
	}
})
require("oil").setup({
	lsp_file_methods = {
		enabled = true,
		timeout_ms = 1000,
		autosave_changes = true,
	},
	columns = {
		"permissions",
		"icon",
	},
	float = {
		max_width = 0.7,
		max_height = 0.6,
		border = "rounded",
	},
})
