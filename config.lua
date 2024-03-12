-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

lvim.plugins = {
	{ "savq/melange-nvim" },
	{ "mhartington/formatter.nvim" },
	{ "karb94/neoscroll.nvim" },
	{ "tpope/vim-fugitive" },
	{ "tpope/vim-surround" },
	{
		"NeogitOrg/neogit",
		dependencies = {
			"nvim-lua/plenary.nvim", -- required
			"sindrets/diffview.nvim", -- optional - Diff integration
			"nvim-telescope/telescope.nvim",
		},
		config = true,
	},
}

require("config-telescope")
require("config-lsp")
require("config-formatter")
require("config-neoscroll")

lvim.colorscheme = "melange"
vim.opt.scrolloff = 0
vim.opt.ignorecase = false

-- Status Line Config
--
-- This is the template:
-- +-------------------------------------------------+
-- | A | B | C                             X | Y | Z |
-- +-------------------------------------------------+

local components = require("lvim.core.lualine.components")
lvim.builtin.lualine.style = "lvim"
lvim.builtin.lualine.sections.lualine_b = {
	components.branch,
	components.diff,
}
lvim.builtin.lualine.sections.lualine_c = {
	{
		"filename",
		path = 1,
		color = { fg = "#888888" },
	},
}
-- End Status Line Config

-- NvimTree Config
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
lvim.builtin.nvimtree.setup.hijack_unnamed_buffer_when_opening = true
lvim.builtin.nvimtree.setup.disable_netrw = true
lvim.builtin.nvimtree.setup.hijack_netrw = true
lvim.builtin.nvimtree.setup.view.float.open_win_config.relative = "win"
-- lvim.builtin.nvimtree.setup.hijack_directories.enable = true
lvim.builtin.nvimtree.setup.view.float.open_win_config.width = 40
lvim.builtin.nvimtree.setup.view.float.open_win_config.height = 45
lvim.builtin.nvimtree.setup.view.float.enable = true
lvim.builtin.nvimtree.setup.actions.open_file.window_picker.enable = false
lvim.builtin.which_key.mappings.c = { "<cmd>nohlsearch<CR>", "No Highlight" }
lvim.builtin.which_key.mappings.k = { "<cmd>BufferKill<CR>", "Kill Buffer" }

vim.cmd([[
	command! -nargs=? -complete=dir Explore silent edit .
	command! -nargs=? -complete=dir Reveal silent edit %:h
]])
-- end NvimTree Config
