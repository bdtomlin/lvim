local on_attach = function(_, bufnr) end
local lspconfig = require("lspconfig")
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

local lsp_options = {
	capabilities = capabilities,
	on_attach = on_attach,
	single_file_support = true,
}

lspconfig.emmet_ls.setup(vim.tbl_extend("force", lsp_options, {
	capabilities = capabilities,
	filetypes = { "html", "css", "elixir", "eelixir", "heex" },
}))

lspconfig.tailwindcss.setup(vim.tbl_extend("force", lsp_options, {
	filetypes = { "html", "elixir", "eelixir", "heex" },
	init_options = {
		userLanguages = {
			elixir = "html-eex",
			eelixir = "html-eex",
			heex = "html-eex",
		},
	},
	settings = {
		tailwindCSS = {
			experimental = {
				classRegex = {
					'class[:]\\s*"([^"]*)"',
				},
			},
		},
	},
}))
