vim.pack.add({
	{ src = "https://github.com/christoomey/vim-tmux-navigator" },
	{ src = "https://github.com/stevearc/oil.nvim" },
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
vim.pack.add({
	{ src = "https://github.com/chentoast/marks.nvim" },
})

require "marks".setup {
	builtin_marks = { "<", ">", "^" },
	refresh_interval = 250,
	sign_priority = { lower = 10, upper = 15, builtin = 8, bookmark = 20 },
	excluded_filetypes = {},
	excluded_buftypes = {},
	mappings = {}
}

vim.pack.add({
	--- telescope et dependencies
	{ src = "https://github.com/nvim-telescope/telescope.nvim",            version = "v0.2.0" },
	{ src = "https://github.com/nvim-telescope/telescope-ui-select.nvim" },
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/nvim-telescope/telescope-fzf-native.nvim", build = "make" },
})
require "telescope".setup({
	preview = { treesitter = false },
	color_devicons = true,
	sorting_strategy = "ascending",
	borderchars = {
		"", -- top
		"", -- right
		"", -- bottom
		"", -- left
		"", -- top-left
		"", -- top-right
		"", -- bottom-right
		"", -- bottom-left
	},
	path_displays = { "smart" },
	layout_config = {
		height = 100,
		width = 400,
		prompt_position = "top",
		preview_cutoff = 40,
	},
	extensions = {
		["ui-select"] = {
			require("telescope.themes").get_dropdown {
				-- even more opts
			}
		}
	}

})
require 'telescope'.load_extension('fzf')
require 'telescope'.load_extension('ui-select')

vim.pack.add({
	{ src = "https://github.com/nvim-lualine/lualine.nvim" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
})
require "lualine".setup({
	sections = {
		lualine_a = { 'mode' },
		lualine_b = { 'branch', 'diff', 'diagnostics' },
		lualine_c = { 'filename' },
		lualine_x = {},
		lualine_y = { 'encoding', 'fileformat', 'filetype' },
		lualine_z = { 'location' }
	}
})

-- vim.pack.add({
-- 	{ src = "https://github.com/vimpostor/vim-tpipeline" },
-- })
-- require("tpipeline").setup({
-- })

vim.pack.add({
	{ src = "https://github.com/folke/snacks.nvim" },
})
require("snacks").setup({
	bigfile = { enabled = true },
	dashboard = { enabled = false },
	explorer = { enabled = false },
	indent = { enabled = true },
	input = { enabled = true },

	picker = { enabled = false },
	notify = { enabled = true },
	notifier = {
		enabled = true,
		timeout = 3000,
	},
	quickfile = { enabled = true },
	scope = { enabled = true },
	scroll = { enabled = true },

	words = { enabled = true },
})
vim.pack.add({
	{ src = "https://github.com/rcarriga/nvim-notify" },
})
require("notify").setup(
)

-- Add nvim-treesitter plugin for advanced syntax highlighting and code manipulation.
vim.pack.add({
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "main" },
})

-- Reference to Neovim's API for creating autocommands.
local autocmd = vim.api.nvim_create_autocmd

-- List of languages for which tree-sitter parsers will be installed.
-- Extend or modify this table to customize language support.
local ts_parsers = {
	"bash",    -- Bash shell scripts
	"c",       -- C language
	"cpp",     -- C++
	"go",      -- Go language
	"helm",    -- Helm charts (Kubernetes)
	"hcl",     -- HashiCorp Configuration Language
	"javascript", -- JavaScript
	"json",    -- JSON data format
	"lua",     -- Lua scripting language
	"python",  -- Python language
	"rust",    -- Rust language
	"sql",     -- SQL queries
	"terraform", -- Terraform configuration
	"typescript", -- TypeScript
	"diff",    -- Diff/patch files
}
-- Require nvim-treesitter and install specified language parsers.
local nts = require("nvim-treesitter")
nts.install(ts_parsers)

-- Automatically update treesitter parsers when the 'PackChanged' event occurs.
autocmd('PackChanged', { callback = function() nts.update() end })


-- Add Copilot-related plugins for AI-assisted coding and chat.
vim.pack.add({
	{ src = "https://github.com/zbirenbaum/copilot.lua" },      -- GitHub Copilot core plugin
	{ src = "https://github.com/copilotlsp-nvim/copilot-lsp" }, -- Copilot LSP integration
	{ src = "https://github.com/CopilotC-Nvim/CopilotChat.nvim" }, -- Copilot Chat interface
})

-- Configure Copilot plugin.
require("copilot").setup({
	-- copilot_model = "gpt-4o-copilot", -- Optional: specify Copilot model
	suggestion = {
		enabled = true, -- Enable inline suggestions
		auto_trigger = true, -- Automatically trigger suggestions
	},
	panel = {
		enabled = false, -- Disable Copilot panel UI
	},
	filetypes = {
		["*"] = true -- Enable Copilot for all filetypes
	}
})

-- Set up Copilot LSP integration.
require("copilot-lsp").setup()

-- Set up Copilot Chat plugin with build and options.
require("CopilotChat").setup({
	build = "make tiktoken", -- Build step for tokenization support
	opts = {
		debug = false     -- Disable debug mode
	}
})
