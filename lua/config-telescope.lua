lvim.builtin.telescope.defaults.vimgrep_arguments = {
	"rg",
	"--color=never",
	"--no-heading",
	"--with-filename",
	"--line-number",
	"--column",
	"--case-sensitive",
	"--hidden",
	"--glob=!.git/",
}

lvim.builtin.which_key.mappings["f"] = {}
lvim.builtin.which_key.mappings["sb"] = {}
lvim.keys.normal_mode["<leader>sh"] = ":Telescope help_tags<CR>"
lvim.keys.normal_mode["<leader>sk"] = ":Telescope keymaps<CR>"
lvim.keys.normal_mode["<leader>sf"] = ":Telescope find_files<CR>"
lvim.keys.normal_mode["<leader>ss"] = ":Telescope builtin<CR>"
lvim.keys.normal_mode["<leader>sw"] = ":Telescope grep_string<CR>"
lvim.keys.normal_mode["<leader>sg"] = ":Telescope live_grep<CR>"
lvim.keys.normal_mode["<leader>sd"] = ":Telescope diagnostics<CR>"
lvim.keys.normal_mode["<leader>sr"] = ":Telescope resume<CR>"
lvim.keys.normal_mode["<leader>so"] = ":Telescope oldfiles<CR>"
lvim.keys.normal_mode["<leader>sb"] = ":Telescope buffers<CR>"
lvim.keys.normal_mode["<leader><leader>"] = ":Telescope buffers<CR>"

lvim.builtin.telescope.defaults.layout_config.width = 0.85
