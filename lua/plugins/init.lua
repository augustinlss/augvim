return {

	-- Core plugins
	require("plugins.core.lsp"),
	require("plugins.core.completion"),
	require("plugins.core.treesitter"),

	-- UI plugins
	require("plugins.ui.colorschemes"),
	require("plugins.ui.lualine"),
	require("plugins.ui.which-key"),
	require("plugins.ui.transparent"),

	-- Utility plugins
	require("plugins.utils.git"),
	require("plugins.utils.telescope"),
	require("plugins.utils.harpoon"),
	require("plugins.utils.comment"),
	require("plugins.utils.autopairs"),
	require("plugins.utils.todo-comments"),
	require("plugins.utils.gitsigns"),
	require("plugins.utils.spectre"),
	require("plugins.utils.copilot"),
	require("plugins.utils.dadbod"),
	require("plugins.utils.formatting"),
	require("plugins.utils.autotag"),
	require("plugins.utils.mini-icons"),
}
