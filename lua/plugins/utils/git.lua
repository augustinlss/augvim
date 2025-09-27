return {
	-- -- Git blame
	-- {
	--   "f-person/git-blame.nvim",
	--   event = "VeryLazy",
	--   config = function()
	--     require("git-blame").setup({
	--       message_template = " <summary> • <date> • <author> • <<sha>>",
	--       date_format = "%r",
	--       message_when_not_committed = "Uncommitted changes",
	--       delay = 0,
	--       highlight_group = "Question",
	--       virtual_text_column = 1,
	--     })
	--     vim.keymap.set("n", "mgb", "<cmd>GitBlameToggle<CR>", { desc = "Toggle Git Blame" })
	--   end,
	-- },

	-- Git signs
	{
		"lewis6991/gitsigns.nvim",
		event = "VeryLazy",
		config = function()
			require("gitsigns").setup({
				signs = {
					add = { text = "+" },
					change = { text = "~" },
					delete = { text = "_" },
					topdelete = { text = "‾" },
					changedelete = { text = "~" },
				},
			})
		end,
	},

	-- Neogit
	{
		"NeogitOrg/neogit",
		event = "VeryLazy",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"sindrets/diffview.nvim",
			"nvim-telescope/telescope.nvim",
		},
		config = function()
			vim.keymap.set("n", "mg", "<cmd>Neogit<CR>", { desc = "Open Neogit" })
			vim.keymap.set("n", "mc", "<cmd>Neogit commit<CR>", { desc = "Open Neogit commit" })
		end,
	},
}

