require("formatter").setup({
	logging = true,
	log_level = vim.log.levels.WARN,
	filetype = {
		lua = {
			function()
				return {
					exe = "/Users/bryantomlin/.local/share/nvim/mason/bin/stylua",
				}
			end,
		},
		-- ruby = {
		-- 	function()
		-- 		return {
		-- 			exe = "standardrb",
		-- 			args = {
		-- 				"--fix-unsafely",
		-- 				"--stdin",
		-- 				util.escape_path(util.get_current_buffer_file_name()),
		-- 				"--format",
		-- 				"files",
		-- 				"--stderr",
		-- 				"--autocorrect-all",
		-- 			},
		-- 			stdin = true,
		-- 		}
		-- 	end,
		-- },
		elixir = {
			require("formatter.filetypes.elixir").mixformat,
		},
		heex = {
			function()
				return {
					exe = "mix",
					args = { "format" },
				}
			end,
		},
		html = {
			require("formatter.filetypes.html").prettier,
		},
		javascript = {
			require("formatter.filetypes.javascript").prettier,
		},
		eruby = {
			function()
				return {
					exe = "htmlbeautifier",
				}
			end,
		},
		python = {
			function()
				return {
					exe = "yapf",
				}
			end,
		},

		-- Use the special "*" filetype for defining formatter configurations on
		-- any filetype
		["*"] = {
			-- "formatter.filetypes.any" defines default configurations for any
			-- filetype
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})

vim.api.nvim_exec2(
	[[
  augroup FormatAutogroup
    autocmd!
    autocmd BufWritePost * FormatWrite
  augroup END
  ]],
	{}
)
