-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

lvim.builtin.nvimtree.active = false -- NOTE: using neo-tree

lvim.plugins = {
	{ "savq/melange-nvim" },
	{
		"nvim-neo-tree/neo-tree.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
	},
	{ "mhartington/formatter.nvim" },
	{ "karb94/neoscroll.nvim" },
}

require("config-neo-tree")
require("config-telescope")
require("config-lsp")
require("config-formatter")
require("config-neoscroll")

lvim.colorscheme = "melange"
vim.opt.scrolloff = 0
