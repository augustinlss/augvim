return {
	bigfile = { enabled = true },
	dashboard = {
		enabled = true,
		preset = {
			header = [[
⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣤⠶⢶⡶⠶⣤⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢀⣤⣾⣿⣿⣿⣿⠀⡸⢇⠀⣿⣿⣿⣿⣷⣤⡀⠀⠀⠀⠀
⠀⠀⠀⣴⢏⡉⠻⢿⣿⣿⣿⠤⠧⠼⠤⣿⣿⣿⣿⠟⢩⠿⣦⠀⠀⠀
⠀⢀⣾⣅⠘⢡⠆⡴⠛⢉⣠⣤⣶⠀⠀⠀⠉⠛⢯⣠⠔⠠⠚⣷⡀⠀
⠀⣾⣿⣿⣷⣦⡞⢀⣴⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⢻⣤⣶⣿⣿⣷⠀
⢠⣿⣿⣿⣿⡟⠀⣾⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⡄
⢸⣿⣿⣿⣿⡇⠘⠛⠛⠛⠛⠛⠛⣤⣤⣤⣤⣤⣤⡄⢸⣿⣿⣿⣿⡇
⠘⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⡿⠀⣼⣿⣿⣿⣿⠃
⠀⢿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⠟⠁⣼⣿⣿⣿⣿⡿⠀
⠀⠈⢿⣿⣿⣿⣿⣷⣤⣀⠀⠀⠀⠿⠛⠋⣁⣤⣾⣿⣿⣿⣿⡿⠁⠀
⠀⠀⠀⠻⣿⣿⣿⣿⣿⣿⣿⣶⣶⣶⣶⣿⣿⣿⣿⣿⣿⣿⠟⠀⠀⠀
⠀⠀⠀⠀⠈⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠁⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠈⠙⠛⠛⠿⠿⠿⠿⠛⠛⠋⠁⠀⠀⠀⠀⠀⠀⠀]],
		},
		sections = {
			{ section = "header" },
			{ section = "keys", gap = 1, padding = 1 },
			{
				pane = 2,
				icon = " ",
				desc = "Browse Repo",
				padding = 3,
				key = "b",
				action = function()
					Snacks.gitbrowse()
				end,
			},
			{ pane = 2, icon = " ", title = "Projects", section = "projects", indent = 2, padding = 2 },
			function()
				local in_git = Snacks.git.get_root() ~= nil
				local cmds = {
					{
						title = "Notifications",
						cmd = "gh notify -s -a -n5",
						action = function()
							vim.ui.open("https://github.com/notifications")
						end,
						key = "n",
						icon = " ",
						height = 5,
						enabled = true,
					},
					{
						icon = " ",
						title = "Git Status",
						cmd = "git --no-pager diff --stat -B -M -C",
						height = 10,
					},
				}
				return vim.tbl_map(function(cmd)
					return vim.tbl_extend("force", {
						pane = 2,
						section = "terminal",
						enabled = in_git,
						padding = 1,
						ttl = 5 * 60,
						indent = 3,
					}, cmd)
				end, cmds)
			end,
			{ section = "startup" },
		},
	},
	explorer = { enabled = false },
	indent = { enabled = false },
	input = { enabled = true },
	picker = { enabled = false },
	quickfile = { enabled = false },
	scope = { enabled = false },
	statuscolumn = { enabled = false },
	scroll = { enabled = false },
	words = { enabled = true },
	-- styles = {
	-- },
}
